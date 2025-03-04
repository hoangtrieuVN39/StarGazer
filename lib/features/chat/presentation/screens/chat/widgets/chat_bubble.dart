/*
Widget hiển thị một tin nhắn:
- Sử dụng thư viện chat_bubbles
- Tùy chỉnh màu sắc và style theo người gửi
- Có thể tái sử dụng ở nhiều nơi
*/
import 'package:flutter/material.dart';
import 'package:stargazer/core/services/domain/entities/chat_message.dart';

class CustomChatBubble extends StatelessWidget {
  final ChatMessage message;

  const CustomChatBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: message.isUser ? 50 : 16,
        right: message.isUser ? 16 : 50,
        bottom: 16,
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: message.isUser
              ? LinearGradient(
                  colors: [Colors.purple.shade400, Colors.purple.shade500],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: message.isUser ? null : Colors.grey.shade800,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(message.isUser ? 20 : 0),
            bottomRight: Radius.circular(message.isUser ? 0 : 20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
