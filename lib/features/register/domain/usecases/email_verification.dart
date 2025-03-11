import 'package:firebase_auth/firebase_auth.dart';

class EmailVerificationUsecase {
  final FirebaseAuth firebaseAuth;

  EmailVerificationUsecase({required this.firebaseAuth});

  Future<void> call() async {
    await firebaseAuth.currentUser?.sendEmailVerification();
  }
}
