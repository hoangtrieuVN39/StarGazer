part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.onGoogleSignUpPressed() = _OnGoogleSignUpPressed;
  const factory RegisterEvent.onSignUpPressed() = _OnSignUpPressed;
  const factory RegisterEvent.onEmailSignUpPressed() = _OnEmailSignUpPressed;
  const factory RegisterEvent.onSignUpSuccess() = _OnSignUpSuccess;
  const factory RegisterEvent.onLoginPressed() = _OnLoginPressed;
  const factory RegisterEvent.onVerifyEmailPressed() = _OnVerifyEmailPressed;
  const factory RegisterEvent.onEmailChanged(String email) = _OnEmailChanged;
  const factory RegisterEvent.onPasswordChanged(String password) =
      _OnPasswordChanged;
  const factory RegisterEvent.onNameChanged(String name) = _OnNameChanged;
  const factory RegisterEvent.onPasswordVisibleChanged() =
      _OnPasswordVisibleChanged;
}
