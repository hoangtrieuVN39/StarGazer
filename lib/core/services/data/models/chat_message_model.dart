/*
Model dùng để:
- Chuyển đổi dữ liệu giữa JSON và đối tượng Dart
- Extend từ ChatMessage entity của domain layer
- Thêm các phương thức serialize/deserialize
*/
import '../../domain/entities/chat_message.dart';

class ChatMessageModel extends ChatMessage {
  ChatMessageModel({
    required String text,
    required bool isUser,
  }) : super(text: text, isUser: isUser);

  // Chuyển từ JSON sang object
  factory ChatMessageModel.fromJson(Map<String, dynamic> json) {
    return ChatMessageModel(
      text: json['text'],
      isUser: json['isUser'],
    );
  }

  // Chuyển từ object sang JSON
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'isUser': isUser,
    };
  }
}