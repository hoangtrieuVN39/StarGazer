import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
    on<CheckLoginStatus>(_onCheckLoginStatus);
    on<LogoutRequested>(_onLogoutRequested);
  }

  Future<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    try {
      // Simulate API call with delay
      await Future.delayed(const Duration(seconds: 1));

      // Validate credentials (in a real app, you would check against an API)
      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        // Save login info
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('username', event.email);
        await prefs.setString('email', '${event.email}@example.com');
        await prefs.setBool('isLoggedIn', true);

        emit(LoginSuccess(message: 'Login successful!'));
      } else {
        emit(LoginFailure(error: 'Invalid credentials'));
      }
    } catch (e) {
      emit(LoginFailure(error: e.toString()));
    }
  }

  Future<void> _onCheckLoginStatus(
    CheckLoginStatus event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    try {
      final prefs = await SharedPreferences.getInstance();
      final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

      if (isLoggedIn) {
        final username = prefs.getString('email');

        final email = prefs.getString('email');

        if (username != null && email != null) {
          emit(LoginSuccess(message: 'Welcome back, $username!'));
        } else {
          emit(LoginInitial());
        }
      } else {
        emit(LoginInitial());
      }
    } catch (e) {
      emit(LoginFailure(error: e.toString()));
    }
  }

  Future<void> _onLogoutRequested(
    LogoutRequested event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', false);
      await prefs.remove('username');
      await prefs.remove('email');

      emit(LoginInitial());
    } catch (e) {
      emit(LoginFailure(error: e.toString()));
    }
  }
}
