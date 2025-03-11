part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState(
      {@Default(false) bool loading,
      @Default(false) bool success,
      @Default(false) bool failure,
      @Default(false) bool isSignUpBtnPressed,
      @Default(null) User? user,
      @Default('') String email,
      @Default('') String password}) = _LoginState;
}
