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
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.purple.shade300, Colors.purple.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Icon(Icons.auto_awesome, color: Colors.white, size: 20),
            ),
            SizedBox(width: 12),
            Text(
              'Hello',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
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
            // Suggested Questions - Moved above input
            Container(
              width: double.infinity,
              color: Color(0xFF1E3C72), // Dark blue background
              padding: EdgeInsets.symmetric(vertical: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    _buildSuggestionChip(
                        'Xem bói tình duyên 💕', context), // Pass context here
                    SizedBox(width: 8),
                    _buildSuggestionChip('Xem bói sự nghiệp 💼', context),
                    SizedBox(width: 8),
                    _buildSuggestionChip('Xem bói tài lộc 💰', context),
                    SizedBox(width: 8),
                    _buildSuggestionChip('Xem bói ngày tốt xấu 📅', context),
                  ],
                ),
              ),
            ),
            // Input Area
            ChatInput(),
          ],
        ),
      ),
    );
  }

  Widget _buildSuggestionChip(String text, BuildContext context) {
    // Add BuildContext parameter
    return InkWell(
      onTap: () {
        final chatProvider = Provider.of<ChatProvider>(
          context,
          listen: false,
        );
        final questionText =
            text.replaceAll(RegExp(r'[\p{Emoji}]', unicode: true), '').trim();
        chatProvider.sendMessage(questionText);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
