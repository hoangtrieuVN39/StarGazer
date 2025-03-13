import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';

class LoginEmailUsecase {
  final LoginRepository loginRepository;

  LoginEmailUsecase({required this.loginRepository});

  Future<String> call(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return FirebaseAuth.instance.currentUser!.uid;
  }
}
