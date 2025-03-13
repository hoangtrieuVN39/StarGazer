import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/chat_provider.dart';
import 'widgets/chat_bubble.dart';
import 'widgets/chat_input.dart';
import 'package:stargazer/core/core.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.black,
      //   automaticallyImplyLeading: false,
      //   title: Row(
      //     children: [
      //       Container(
      //         width: 40,
      //         height: 40,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           gradient: LinearGradient(
      //             colors: [Colors.purple.shade300, Colors.purple.shade400],
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //           ),
      //         ),
      //         child: Icon(Icons.auto_awesome, color: Colors.white, size: 20),
      //       ),
      //       SizedBox(width: 12),
      //       Text(
      //         'Hello',
      //         style: TextStyle(
      //           fontSize: 24,
      //           fontWeight: FontWeight.w700,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.coalLight(1.0),
        ),
        child: Column(
          children: [
            Expanded(
              child: Consumer<ChatProvider>(
                builder: (context, provider, _) {
                  return ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.all(16),
                    itemCount: provider.messages.length,
                    itemBuilder: (context, index) {
                      final message = provider.messages[index];
                      return CustomChatBubble(message: message);
                    },
                  );
                },
              ),
            ),
            ChatInput(),
          ],
        ),
      ),
    );
  }
}
