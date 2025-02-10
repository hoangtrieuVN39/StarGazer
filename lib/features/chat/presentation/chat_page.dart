import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/features/camera/presentation/camera_page.dart';
import 'package:stargazer/features/chat/presentation/chat_container.dart';
import 'package:stargazer/features/chat/presentation/bloc/chat_bloc.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(),
      child: const ChatContainer(),
    );
  }
}
