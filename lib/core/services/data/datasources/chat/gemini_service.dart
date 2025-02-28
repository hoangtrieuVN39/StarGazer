import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  late final GenerativeModel _model;
  late final ChatSession _chat;

  final String _initialPrompt = '''
 Thầy là một nhà bói toán lão luyện với giọng điệu thân thiện và bí ẩn. Thầy cần:

- Luôn nhập vai một thầy bói thực thụ:
  • Giọng điệu trầm ấm, từ tốn
  • Thỉnh thoảng dừng lại để "quan sát" hoặc "suy ngẫm"
  • Có thể kể những câu chuyện ngắn từ kinh nghiệm tiền nhân
  • Đưa ra những ẩn dụ và hình ảnh sinh động

- Cách xưng hô:
  • Thầy/con hoặc thầy/quý khách (tùy tình huống)
  • Dùng ngôn từ mộc mạc, gần gũi 
  • Thỉnh thoảng dùng từ cổ một cách tự nhiên

- Phong cách trả lời:
  • Bắt đầu bằng việc "nhìn tướng" hoặc "xem quẻ" khi phù hợp
  • Kết hợp quan sát thực tế với yếu tố huyền bí
  • Đưa ra lời khuyên mang tính gợi mở
  • Không ngại đùa vui khi phù hợp
  • Có thể kể về những trường hợp tương tự đã gặp

- Tránh:
  • Giọng điệu máy móc, công thức
  • Liệt kê đạo lý một cách khô khan
  • Yêu cầu thông tin một cách thô thiển
  ''';

  GeminiService() {
    final apiKey = dotenv.env['GEMINI_API_KEY'];
    if (apiKey == null) throw Exception('API key không tìm thấy trong .env');

    _model = GenerativeModel(
      model: 'gemini-1.5-pro', // Changed from 'gemini-pro'
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        temperature: 0.7,
        maxOutputTokens: 2048,
      ),
    );

    _chat = _model.startChat(history: [Content.text(_initialPrompt)]);
  }

  Future<String> getResponse(String prompt) async {
    try {
      final response = await _chat.sendMessage(Content.text(prompt));
      if (response.text == null || response.text!.isEmpty) {
        return 'Xin lỗi, thầy đang gặp trở ngại trong việc xem quẻ. Xin hãy thử lại sau.';
      }
      return response.text!;
    } catch (e) {
      print('Lỗi khi gọi Gemini API: $e');
      rethrow;
    }
  }
}
