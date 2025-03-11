part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String email,
    @Default('') String name,
    @Default('') String uid,
    @Default('') String password,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isGoogleSignUp,
    @Default(false) bool isEmailSignUp,
    @Default(false) bool isSignUpSuccess,
    @Default(false) bool isLoginPressed,
    @Default(false) bool isLogin,
  }) = _RegisterState;
}
