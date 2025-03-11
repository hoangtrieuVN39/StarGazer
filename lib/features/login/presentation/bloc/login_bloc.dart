import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _loginRepository;

  LoginBloc({required LoginRepository loginRepository})
      : _loginRepository = loginRepository,
        super(const LoginState(loading: false)) {
    on<_CheckLoginStatus>((event, emit) async {
      _onCheckLoginStatus(event, emit);
    });

    on<_LoginButtonPressed>((event, emit) async {
      await _onLoginButtonPressed(event, emit);
    });

    on<_GoogleLoginRequested>((event, emit) async {
      await _onGoogleLoginRequested(event, emit);
    });

    on<_RegisterButtonPressed>((event, emit) async {
      await _onRegisterButtonPressed(event, emit);
    });

    on<_SignUp>((event, emit) async {
      emit(const LoginState(isSignUpBtnPressed: true));
    });
  }

  Future<void> _onLoginButtonPressed(
    _LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(const LoginState(loading: true));
      await _loginRepository.signInWithEmailAndPassword(
        event.email,
        event.password,
      );
      emit(const LoginState(success: true));
    } catch (e) {
      emit(LoginState(failure: true));
    }
  }

  Future<void> _onGoogleLoginRequested(
    _GoogleLoginRequested event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(const LoginState(loading: true));
      await _loginRepository.signInWithGoogle();
      emit(const LoginState(googleLoginSuccess: true));
    } catch (e) {
      emit(LoginState(googleLoginFailure: true));
    }
  }

  Future<void> _onCheckLoginStatus(
    _CheckLoginStatus event,
    Emitter<LoginState> emit,
  ) async {
    _loginRepository.authStateChanges.listen((User? user) {
      if (user != null) {
        emit(const LoginState(success: true));
      } else {
        emit(const LoginState(loading: false));
      }
    });
  }

  Future<void> _onRegisterButtonPressed(
    _RegisterButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState(loading: false));
  }
}
