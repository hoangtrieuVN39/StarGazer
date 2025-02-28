import 'package:stargazer/core/services/domain/usecases/send_message.dart';
import 'package:flutter/material.dart';
import 'package:stargazer/core/services/domain/entities/chat_message.dart';
import 'package:stargazer/core/utils/rate_limiter.dart';

class ChatProvider with ChangeNotifier {
  final SendMessage _sendMessage;
  static const int MESSAGE_LIMIT = 50;
  // final RateLimiter _rateLimiter =
  //     RateLimiter(); // This field is currently unused

  final List<ChatMessage> _messages = [];
  bool _isLoading = false;
  final ConversationContext _context = ConversationContext();

  ChatProvider(this._sendMessage) {
    _initializeConversation();
  }

  void _initializeConversation() {
    _addSystemMessage('''
🔮 Xin chào! Tôi là thầy bói Gemini.
Để xem chính xác vận mệnh, 
tôi cần biết thêm thông tin của bạn.
''');
  }

  Future<void> sendMessage(String message) async {
    if (message.trim().isEmpty) return;

    try {
      _addUserMessage(message);
      _context.updateUserProfile(message);

      // Kiểm tra và xử lý thông tin còn thiếu
      String additionalPrompt = _context.generateMissingInformationPrompt();
      if (additionalPrompt.isNotEmpty) {
        _addSystemMessage(additionalPrompt);
        return;
      }

      _isLoading = true;
      notifyListeners();

      await _generateIntelligentResponse(message);
    } catch (e) {
      _addSystemMessage('Có lỗi xảy ra. Hãy thử lại.');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> _generateIntelligentResponse(String message) async {
    final enrichedPrompt = _buildContextualPrompt(message);
    final response = await _sendMessage.execute(enrichedPrompt);
    _addSystemMessage(response.text);
  }

  String _buildContextualPrompt(String newMessage) {
    final context = _context.getAccumulatedContext();
    final userInfo = [
      _context.userProfile['name'] != null
          ? 'tên ${_context.userProfile['name']}'
          : null,
      _context.userProfile['birthYear'] != null
          ? 'sinh năm ${_context.userProfile['birthYear']}'
          : null,
      _context.userProfile['gender'] != null
          ? 'giới tính ${_context.userProfile['gender']}'
          : null,
    ].where((item) => item != null).join(', ');

    return '''
THÔNG TIN NGƯỜI XEM: ${userInfo.isNotEmpty ? userInfo : 'chưa rõ'}

KHÔNG KHÍ CUỘC THOẠI: 
${_context.currentTopics.isNotEmpty ? 'Đang tập trung vào ${_context.currentTopics.join(', ')}' : 'Trò chuyện tự do'}

MẠCH TRUYỆN: $context

LỜI NHẮN MỚI: $newMessage

CÁCH TRẢ LỜI:
- Giữ mạch trò chuyện tự nhiên, uyển chuyển
- Nếu cần thông tin thêm, hỏi một cách khéo léo
- Kết hợp quan sát thực tế với tri thức huyền bí
''';
  }

  Future<void> retryMessage(String failedMessage) async {
    try {
      final index = _messages.indexWhere(
        (msg) => msg.text == failedMessage && msg.isError,
      );
      if (index != -1) {
        _messages.removeAt(index);
        notifyListeners();
        await sendMessage(failedMessage);
      }
    } catch (e) {
      _addSystemMessage(
        'Gửi tin nhắn thất bại. Tap để thử lại.',
        isError: true,
      );
    }
  }

  void _addMessage(ChatMessage message) {
    if (_messages.length >= MESSAGE_LIMIT) {
      _messages.removeLast();
    }
    _messages.insert(0, message);
    notifyListeners();
  }

  void _addUserMessage(String text) {
    _addMessage(ChatMessage(text: text, isUser: true));
  }

  void _addSystemMessage(String text, {bool isError = false}) {
    _addMessage(ChatMessage(text: text, isUser: false, isError: isError));
  }

  List<ChatMessage> get messages => _messages;
  bool get isLoading => _isLoading;
}

class ConversationContext {
  Map<String, dynamic> _userProfile = {
    'name': null,
    'birthYear': null,
    'gender': null,
    'birthTime': null,
  };

  final List<String> _accumulatedContext = [];
  List<String> _currentTopics = [];
  int _conversationDepth = 0;

  static const Map<String, List<String>> _topicMappings = {
    'tử vi': ['tử vi', 'tuổi', 'sinh năm', 'mệnh', 'cung'],
    'duyên số': ['tình yêu', 'hôn nhân', 'quan hệ', 'kết nối'],
    'vận mệnh': ['số phận', 'định mệnh', 'tương lai'],
    'sự nghiệp': ['công việc', 'nghề nghiệp', 'định hướng'],
    'tâm sự': ['buồn', 'vui', 'stress', 'lo lắng', 'hạnh phúc'],
    'đời sống': ['sức khỏe', 'gia đình', 'học tập', 'cuộc sống'],
    'lời khuyên': ['nên', 'không nên', 'khuyên', 'tư vấn'],
  };

  void updateUserProfile(String message) {
    final lowercaseMessage = message.toLowerCase();

    // Trích xuất năm sinh
    final birthYearMatch = RegExp(r'(19|20)\d{2}').firstMatch(message);
    if (birthYearMatch != null) {
      _userProfile['birthYear'] = birthYearMatch.group(0);
    }

    // Trích xuất tên
    final nameMatch = RegExp(r'tên (của )?tôi là (\w+)').firstMatch(message);
    if (nameMatch != null) {
      _userProfile['name'] = nameMatch.group(2);
    }

    // Trích xuất giới tính
    final genderMatch = RegExp(r'(nam|nữ)').firstMatch(lowercaseMessage);
    if (genderMatch != null) {
      _userProfile['gender'] = genderMatch.group(0);
    }

    final birthTimeMatch = RegExp(
      r'(\d{1,2})\s*(giờ|h)',
    ).firstMatch(lowercaseMessage);
    if (birthTimeMatch != null) {
      _userProfile['birthTime'] = birthTimeMatch.group(1);
    }

    _updateTopics(message);
    _updateContext(message);
    _conversationDepth++;
  }

  String generateMissingInformationPrompt() {
    final missingFields = _userProfile.entries
        .where((entry) => entry.value == null)
        .map((entry) => _getFieldDescription(entry.key))
        .toList();

    return missingFields.isEmpty
        ? ''
        : 'Hãy cho thầy biết con là ai: ${missingFields.join(', ')}';
  }

  String _getFieldDescription(String field) {
    switch (field) {
      case 'name':
        return 'Tên của bạn (theo cấu trúc "Tên tôi là...")';
      case 'birthYear':
        return 'Năm sinh';
      case 'gender':
        return 'Giới tính';
      case 'birthTime':
        return 'Giờ sinh';
      default:
        return field;
    }
  }

  void _updateTopics(String message) {
    _currentTopics = _topicMappings.entries
        .where(
          (entry) => entry.value.any(
            (topic) => message.toLowerCase().contains(topic),
          ),
        )
        .map((e) => e.key)
        .toList();
  }

  List<String> extractKeywords(String message) {
    return _topicMappings.entries
        .expand(
          (entry) => entry.value.where(
            (topic) => message.toLowerCase().contains(topic),
          ),
        )
        .toList();
  }

  double assessMessageComplexity(String message) {
    final wordCount = message.split(' ').length;
    final sentenceCount = message.split(RegExp(r'[.!?]')).length;
    return wordCount / (sentenceCount > 0 ? sentenceCount : 1);
  }

  String getAccumulatedContext() {
    return _accumulatedContext.join(' | ');
  }

  Map<String, dynamic> get userProfile => _userProfile;
  List<String> get currentTopics => _currentTopics;
  int get conversationDepth => _conversationDepth;

  String _analyzeConversationTone(String message) {
    message = message.toLowerCase();
    if (message.contains('buồn') || message.contains('khổ')) return 'tâm sự';
    if (message.contains('làm sao') || message.contains('nên')) return 'tư vấn';
    if (message.contains('tương lai') || message.contains('sẽ'))
      return 'tiên đoán';
    return 'trò chuyện';
  }

  void _updateContext(String message) {
    _accumulatedContext.insert(0, message);
    if (_accumulatedContext.length > 5) {
      _accumulatedContext.removeLast();
    }

    // Phân tích tông giọng cuộc trò chuyện
    String tone = _analyzeConversationTone(message);
    _conversationMood = tone;
  }

  String _conversationMood = 'trò chuyện';

  String getConversationInsights() {
    return '''
Tâm trạng: $_conversationMood
Độ sâu: ${_conversationDepth > 3 ? 'đã thân thiết' : 'mới quen'}
''';
  }
}
