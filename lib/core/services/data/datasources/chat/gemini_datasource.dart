import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:stargazer/core/constants/api_constants.dart';
import 'gemini_service.dart';

import 'package:stargazer/core/exceptions/api_exception.dart';

class GeminiDatasource {
  final _service = GeminiService();

  Future<String> sendMessage(String message) async {
    try {
      final response = await _service.getResponse(message);
      if (response.isEmpty) {
        throw Exception('Phản hồi trống');
      }
      return response;
    } catch (e) {
      print('Lỗi trong GeminiDatasource: $e');
      throw Exception('Không thể kết nối với Gemini: ${e.toString()}');
    }
  }
}
