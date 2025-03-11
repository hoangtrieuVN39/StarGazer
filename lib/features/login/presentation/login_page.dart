import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stargazer/features/login/data/repositories/login_repository_impl.dart';
import 'package:stargazer/features/login/presentation/bloc/login_bloc.dart';
import 'package:stargazer/features/login/presentation/login_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        loginRepository: LoginRepositoryImpl(
          firebaseAuth: FirebaseAuth.instance,
          googleSignIn: GoogleSignIn(),
        ),
      ),
      child: const LoginContainer(),
    );
  }
}
