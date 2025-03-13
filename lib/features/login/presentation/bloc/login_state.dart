part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState(
      {@Default(false) bool loading,
      @Default(false) bool emailSuccess,
      @Default(false) bool googleSuccess,
      @Default(false) bool emailFailure,
      @Default(false) bool googleFailure,
      @Default(false) bool googleUserNotFound,
      @Default(false) bool isSignUpBtnPressed,
      @Default(null) User? user,
      @Default('') String email,
      @Default('') String password,
      @Default('') String id}) = _LoginState;
}
