import 'package:stargazer/core/services/data/datasources/chat/gemini_datasource.dart';
import 'package:stargazer/core/services/domain/repositories/chat_repository.dart';
import '../../domain/entities/chat_message.dart';
import '../models/chat_message_model.dart';

class ChatRepositoryImpl implements ChatRepository {
  final GeminiDatasource _datasource;

  ChatRepositoryImpl(this._datasource);

  @override
  Future<ChatMessage> sendMessage(String message) async {
    try {
      final response = await _datasource.sendMessage(message);
      // Chuyển đổi response string thành ChatMessage
      return ChatMessageModel(
        text: response,
        isUser: false,
      );
    } catch (e) {
      print('Error in ChatRepositoryImpl: $e');
      rethrow;
    }
  }
}
