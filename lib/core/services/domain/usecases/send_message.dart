/*
Use case đóng gói logic gửi tin nhắn:
- Tuân theo nguyên tắc Single Responsibility
- Dễ dàng thay đổi logic xử lý
- Thuận tiện cho việc test
*/
import '../repositories/chat_repository.dart';
import '../entities/chat_message.dart';

class SendMessage {
  final ChatRepository repository;

  SendMessage(this.repository);

  Future<ChatMessage> execute(String message) async {
    // Cập nhật kiểu trả về
    return await repository.sendMessage(message);
  }
}
