import 'package:firebase_auth/firebase_auth.dart';

class RegisterEmailUsecase {
  final FirebaseAuth firebaseAuth;

  RegisterEmailUsecase({required this.firebaseAuth});

  Future<String> call(String email, String password) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user!.uid;
    } catch (e) {
      return '';
    }
  }
}
