/*
Interface định nghĩa các phương thức tương tác với dữ liệu:
- Abstract class để có thể mock khi test
- Không quan tâm đến implementation chi tiết
*/
import '../entities/chat_message.dart';

abstract class ChatRepository {
  Future<ChatMessage> sendMessage(
      String message); // Thay đổi kiểu trả về thành ChatMessage
}
