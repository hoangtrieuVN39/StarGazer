part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginButtonPressed({
    required String email,
    required String password,
  }) = _LoginButtonPressed;
  const factory LoginEvent.checkLoginStatus() = _CheckLoginStatus;
  const factory LoginEvent.registerButtonPressed() = _RegisterButtonPressed;
  const factory LoginEvent.googleLoginRequested() = _GoogleLoginRequested;
  const factory LoginEvent.signUp() = _SignUp;
}
