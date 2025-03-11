part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState({@Default(0) int a}) = _ChatState;
}
