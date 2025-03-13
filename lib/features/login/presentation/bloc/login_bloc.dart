import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stargazer/core/services/data/services/remove_sharedprefs_usecase.dart';
import 'package:stargazer/core/services/data/services/save_sharedprefs_usecase.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/core/services/domain/usecases/get_user_usecase.dart';
import 'package:stargazer/features/login/data/repositories/login_repository_impl.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';
import 'package:stargazer/features/login/domain/usecase/auth_state_change_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/login_email_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/login_google_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/login_sharedprefs_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/user_get_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginGoogleUsecase loginGoogleUsecase;
  final LoginEmailUsecase loginEmailUsecase;
  final LoginSharedPrefsUsecase loginSharedPrefsUsecase;
  final AuthStateChangeUsecase authStateChangeUsecase;
  final SaveSharedPrefsUsecase saveSharedPrefsUsecase;
  final RemoveSharedPrefsUsecase removeSharedPrefsUsecase;
  final UserGetUsecase userGetUsecase;

  LoginBloc({
    required this.userGetUsecase,
    required this.removeSharedPrefsUsecase,
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
      emit(state.copyWith(isSignUpBtnPressed: true));
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
    await removeSharedPrefsUsecase();
    final user = await loginSharedPrefsUsecase();
    if (user != null) {
      emit(state.copyWith(user: user));
    } else {
      emit(state.copyWith(loading: false));
    }
  }

  Future<void> _onLoginButtonPressed(
    _LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(state.copyWith(loading: true));
      final userId = await loginEmailUsecase(state.email, state.password);
      final user = await userGetUsecase(userId);
      emit(state.copyWith(user: user));
      await saveSharedPrefsUsecase(userId);
      emit(state.copyWith(emailSuccess: true));
    } catch (e) {
      emit(state.copyWith(emailFailure: true));
    }
  }

  Future<void> _onGoogleLoginPressed(
    _OnGoogleLoginPressed event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(state.copyWith(loading: true));
      final userId = await loginGoogleUsecase();
      emit(state.copyWith(id: userId['id']!, email: userId['email']!));
      final user = await userGetUsecase(userId['id']!);
      if (user == null) {
        emit(state.copyWith(googleUserNotFound: true));
      } else {
        emit(state.copyWith(user: user));
        await saveSharedPrefsUsecase(userId['id']!);
        emit(state.copyWith(googleSuccess: true));
      }
    } catch (e) {
      emit(state.copyWith(googleFailure: true));
    }
  }
}
