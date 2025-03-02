import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/chat_provider.dart';
import 'widgets/chat_bubble.dart';
import 'widgets/chat_input.dart';
import '../../../../../main.dart'; // Thêm import cho navigatorKey

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.grey.shade900,
      //   centerTitle: true,
      //   title: Text(
      //     'Thầy Bói AI',
      //     style: TextStyle(
      //       fontSize: 18,
      //       color: Colors.white,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      // ),
      body: Column(
        children: [
          // Chat Messages
          Expanded(
            child: Consumer<ChatProvider>(
              builder: (context, provider, _) {
                return ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  itemCount: provider.messages.length,
                  itemBuilder: (context, index) {
                    final message = provider.messages[index];
                    return CustomChatBubble(message: message);
                  },
                );
              },
            ),
          ),

          // Loading Indicator
          if (context.watch<ChatProvider>().isLoading)
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.purple[200]!),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Thầy đang suy nghĩ...",
                    style: TextStyle(
                      color: Colors.purple[200],
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

          // Suggested Questions
          Container(
            color: Color(0xFF1E3C72).withOpacity(0.3),
            padding: EdgeInsets.symmetric(vertical: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  _buildSuggestionChip('Xem duyên tình 💕', context),
                  SizedBox(width: 8),
                  _buildSuggestionChip('Xem sự nghiệp 💼', context),
                  SizedBox(width: 8),
                  _buildSuggestionChip('Xem tài lộc 💰', context),
                  SizedBox(width: 8),
                  _buildSuggestionChip('Xem ngày tốt xấu 📅', context),
                ],
              ),
            ),
          ),

          // Chat Input
          ChatInput(),
        ],
      ),
    );
  }

  Widget _buildSuggestionChip(String text, BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          final chatProvider =
              Provider.of<ChatProvider>(context, listen: false);
          final questionText =
              text.replaceAll(RegExp(r'[\p{Emoji}]', unicode: true), '').trim();
          chatProvider.sendMessage(questionText);
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple[200]!.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.purple[100],
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
