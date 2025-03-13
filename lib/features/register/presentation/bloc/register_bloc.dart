import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stargazer/core/services/data/services/save_sharedprefs_usecase.dart';
import 'package:stargazer/features/register/domain/usecases/email_verification.dart';
import 'package:stargazer/features/register/domain/usecases/fields_validation_usecase.dart';
import 'package:stargazer/features/register/domain/usecases/register_email_usecase.dart';
import 'package:stargazer/features/register/domain/usecases/register_google_usecase.dart';
import 'package:stargazer/features/register/domain/usecases/user_create_usecase.dart';
import 'package:stargazer/features/register/domain/usecases/email_check_verification.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterGoogleUsecase registerGoogleUsecase;
  final RegisterEmailUsecase registerEmailUsecase;
  final EmailVerificationUsecase emailVerificationUsecase;
  final UserCreateUsecase userCreateUsecase;
  final EmailCheckVerificationUsecase emailCheckVerificationUsecase;
  final SaveSharedPrefsUsecase saveSharedPrefsUsecase;
  final String? id;

  RegisterBloc({
    required this.id,
    required this.registerGoogleUsecase,
    required this.registerEmailUsecase,
    required this.emailVerificationUsecase,
    required this.userCreateUsecase,
    required this.emailCheckVerificationUsecase,
    required this.saveSharedPrefsUsecase,
  }) : super(const RegisterState()) {
    on<_OnGoogleSignUpPressed>((event, emit) async {
      final credential = await registerGoogleUsecase();
      final uid = credential[0];
      final email = credential[1];
      emit(state.copyWith(isGoogleSignUp: true, email: email, uid: uid));
    });

    on<_OnEmailSignUpPressed>((event, emit) async {
      if (FieldsValidationUsecase.call(
        state.email,
        state.password,
        state.name,
      )) {
        await registerEmailUsecase(state.email, state.password);
        emit(state.copyWith(isEmailSignUp: true));
        await emailVerificationUsecase();
      } else {
        emit(state.copyWith(isSignUpSuccess: false, isEmailSignUp: false));
      }
    });

    on<_OnVerifyEmailPressed>((event, emit) async {
      final isVerified = await emailCheckVerificationUsecase();
      if (isVerified.isNotEmpty) {
        emit(state.copyWith(uid: isVerified));
        await userCreateUsecase(state.uid, state.email, state.name);
        add(const _OnSignUpSuccess());
      } else {
        emit(state.copyWith(isEmailSignUp: false));
      }
    });

    on<_OnPasswordVisibleChanged>((event, emit) {
      emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
    });

    on<_OnEmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<_OnPasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<_OnNameChanged>((event, emit) {
      emit(state.copyWith(name: event.name));
    });

    on<_OnSignUpPressed>((event, emit) async {
      emit(state.copyWith(name: state.name));
      if (FieldsValidationUsecase.validateName(
        state.name,
      )) {
        await userCreateUsecase(state.uid, state.email, state.name);
        await saveSharedPrefsUsecase(state.uid);
        add(const _OnSignUpSuccess());
      }
    });

    on<_OnSignUpSuccess>((event, emit) async {
      emit(
        state.copyWith(
          isSignUpSuccess: true,
          isEmailSignUp: false,
          isGoogleSignUp: false,
        ),
      );
      await saveSharedPrefsUsecase(state.uid);
      await Future.delayed(const Duration(seconds: 2));
      emit(state.copyWith(isLogin: true));
    });

    on<_OnLoginPressed>((event, emit) {
      emit(state.copyWith(isLoginPressed: true));
    });

    on<_OnInitial>((event, emit) {
      if (id != null) {
        emit(state.copyWith(uid: id!, isGoogleSignUp: true));
      }
    });

    add(const _OnInitial());
  }
}
