part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failure,
    @Default(false) bool googleLoginSuccess,
    @Default(false) bool googleLoginFailure,
    @Default(false) bool isSignUpBtnPressed,
  }) = _LoginState;
}
