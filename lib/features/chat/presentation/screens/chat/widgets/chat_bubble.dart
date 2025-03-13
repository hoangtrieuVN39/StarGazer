/*
Widget hiển thị một tin nhắn:
- Sử dụng thư viện chat_bubbles
- Tùy chỉnh màu sắc và style theo người gửi
- Có thể tái sử dụng ở nhiều nơi
*/
import 'package:flutter/material.dart';
import 'package:stargazer/core/services/domain/entities/chat_message.dart';

import '../../../../../../core/core.dart';

class CustomChatBubble extends StatelessWidget {
  final ChatMessage message;

  const CustomChatBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: message.isUser ? 64 : 16,
        right: message.isUser ? 16 : 64,
        bottom: 16,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: message.isUser ? AppColors.rice(0.25) : AppColors.blue(1.0),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.text,
                style: TextStyle(
                  color: AppColors.white(1.0),
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
