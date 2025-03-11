import 'package:firebase_auth/firebase_auth.dart';

class LoginEmailUsecase {
  LoginEmailUsecase();

  Future<void> call(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
