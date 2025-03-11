part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onInitial() = _OnInitial;
  const factory LoginEvent.loginButtonPressed() = _LoginButtonPressed;
  const factory LoginEvent.onGoogleLoginPressed() = _OnGoogleLoginPressed;
  const factory LoginEvent.signUp() = _SignUp;
  const factory LoginEvent.emailChanged(String email) = _EmailChanged;
  const factory LoginEvent.passwordChanged(String password) = _PasswordChanged;
}
