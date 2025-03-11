import 'package:firebase_auth/firebase_auth.dart';

class AuthStateChangeUsecase {
  Stream<User?> call() {
    return FirebaseAuth.instance.authStateChanges();
  }
}
