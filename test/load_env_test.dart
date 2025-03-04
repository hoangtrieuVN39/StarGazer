import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  print("GEMINI_API_KEY: ${dotenv.env['GEMINI_API_KEY']}");
  print("IMAGE_NAME: ${dotenv.env['IMAGE_NAME']}");
  print("MODEL_PATH: ${dotenv.env['MODEL_PATH']}");
}
