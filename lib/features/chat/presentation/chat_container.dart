import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/features/chat/presentation/bloc/chat_bloc.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(body: Center(child: Text(state.a.toString())));
      },
    );
  }
}
