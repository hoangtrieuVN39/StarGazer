import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/chat_provider.dart';
import '../../../../../../core/core.dart';

class ChatInput extends StatefulWidget {
  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        color: AppColors.coal(1.0),
        child: Column(
          spacing: 12,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: AppColors.rice(1.0), width: 1),
                    ),
                    child: TextField(
                      controller: _textController,
                      style: TextStyle(color: Colors.white),
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Nhắn tin...',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.rice(1.0),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_upward_rounded),
                    color: AppColors.coal(1.0),
                    onPressed: () {
                      if (_textController.text.isNotEmpty) {
                        context
                            .read<ChatProvider>()
                            .sendMessage(_textController.text);
                        _textController.clear();
                      }
                    },
                  ),
                ),
              ],
            )
          ],
        ));
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

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
