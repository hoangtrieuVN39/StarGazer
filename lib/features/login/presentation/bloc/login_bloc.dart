import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stargazer/core/services/data/services/remove_sharedprefs_usecase.dart';
import 'package:stargazer/core/services/data/services/save_sharedprefs_usecase.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';
import 'package:stargazer/features/login/domain/usecase/auth_state_change_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/login_email_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/login_google_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/login_sharedprefs_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;
  final LoginGoogleUsecase loginGoogleUsecase;
  final LoginEmailUsecase loginEmailUsecase;
  final LoginSharedPrefsUsecase loginSharedPrefsUsecase;
  final AuthStateChangeUsecase authStateChangeUsecase;
  final SaveSharedPrefsUsecase saveSharedPrefsUsecase;
  final RemoveSharedPrefsUsecase removeSharedPrefsUsecase;

  LoginBloc({
    required this.removeSharedPrefsUsecase,
    required this.loginRepository,
    required this.loginGoogleUsecase,
    required this.loginEmailUsecase,
    required this.loginSharedPrefsUsecase,
    required this.authStateChangeUsecase,
    required this.saveSharedPrefsUsecase,
  }) : super(const LoginState(loading: false)) {
    on<_OnInitial>((event, emit) async {
      await _onInitial(event, emit);
    });

    on<_LoginButtonPressed>((event, emit) async {
      await _onLoginButtonPressed(event, emit);
    });

    on<_OnGoogleLoginPressed>((event, emit) async {
      await _onGoogleLoginPressed(event, emit);
    });

    on<_SignUp>((event, emit) async {
      emit(const LoginState(isSignUpBtnPressed: true));
    });

    on<_EmailChanged>((event, emit) async {
      emit(state.copyWith(email: event.email));
    });

    on<_PasswordChanged>((event, emit) async {
      emit(state.copyWith(password: event.password));
    });

    add(const LoginEvent.onInitial());
  }

  Future<void> _onInitial(
    _OnInitial event,
    Emitter<LoginState> emit,
  ) async {
    final user = await loginSharedPrefsUsecase();
    if (user != null) {
      emit(LoginState(success: true, user: user));
    } else {
      emit(const LoginState(loading: false));
    }
  }

  Future<void> _onLoginButtonPressed(
    _LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(const LoginState(loading: true));
      final user = await loginEmailUsecase(state.email, state.password);
      await saveSharedPrefsUsecase(user.id);
      emit(LoginState(success: true, user: user));
    } catch (e) {
      emit(LoginState(failure: true));
    }
  }

  Future<void> _onGoogleLoginPressed(
    _OnGoogleLoginPressed event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(const LoginState(loading: true));
      final user = await loginGoogleUsecase();
      await saveSharedPrefsUsecase(user.id);
      emit(LoginState(success: true, user: user));
    } catch (e) {
      emit(const LoginState(failure: true));
    }
  }
}
