import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/core/services/data/services/firebase_reference.dart';
import 'package:stargazer/core/services/data/services/remove_sharedprefs_usecase.dart';
import 'package:stargazer/core/services/data/services/save_sharedprefs_usecase.dart';
import 'package:stargazer/features/login/data/repositories/login_repository_impl.dart';
import 'package:stargazer/features/login/domain/usecase/auth_state_change_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/login_email_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/login_google_usecase.dart';
import 'package:stargazer/features/login/domain/usecase/login_sharedprefs_usecase.dart';
import 'package:stargazer/features/login/presentation/bloc/login_bloc.dart';
import 'package:stargazer/features/login/presentation/login_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        loginRepository: LoginRepositoryImpl(
          firebaseReference: FirebaseReference(),
        ),
        loginGoogleUsecase: LoginGoogleUsecase(
          loginRepository: LoginRepositoryImpl(
            firebaseReference: FirebaseReference(),
          ),
        ),
        loginEmailUsecase: LoginEmailUsecase(
          loginRepository: LoginRepositoryImpl(
            firebaseReference: FirebaseReference(),
          ),
        ),
        loginSharedPrefsUsecase: LoginSharedPrefsUsecase(
          loginRepository: LoginRepositoryImpl(
            firebaseReference: FirebaseReference(),
          ),
        ),
        authStateChangeUsecase: AuthStateChangeUsecase(),
        saveSharedPrefsUsecase: SaveSharedPrefsUsecase(),
        removeSharedPrefsUsecase: RemoveSharedPrefsUsecase(),
      ),
      child: LoginContainer(),
    );
  }
}
