/*
Entity định nghĩa cấu trúc dữ liệu cơ bản của một tin nhắn:
- Không phụ thuộc vào cách lưu trữ hay format dữ liệu
- Chỉ chứa thuộc tính cần thiết cho business logic
*/
class ChatMessage {
  final String text; // Nội dung tin nhắn
  final bool isUser; // True nếu là tin nhắn của người dùng
  final bool isError;
  final DateTime timestamp;

  ChatMessage({
    required this.text,
    required this.isUser,
    this.isError = false,
    DateTime? timestamp,
  }) : this.timestamp = timestamp ?? DateTime.now();

  ChatMessage copyWith({
    String? text,
    bool? isUser,
    bool? isError,
    DateTime? timestamp,
  }) {
    return ChatMessage(
      text: text ?? this.text,
      isUser: isUser ?? this.isUser,
      isError: isError ?? this.isError,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
