import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static String get apiKey => dotenv.env['GEMINI_API_KEY'] ?? '';
  static const String baseUrl = 'https://generativelanguage.googleapis.com';
  static const String model = 'gemini-pro';
  static const Duration timeout = Duration(seconds: 30);
}
