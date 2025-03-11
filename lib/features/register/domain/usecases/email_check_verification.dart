import 'package:firebase_auth/firebase_auth.dart';

class EmailCheckVerificationUsecase {
  final FirebaseAuth _firebaseAuth;

  EmailCheckVerificationUsecase({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  Future<String> call() async {
    await _firebaseAuth.currentUser?.reload();
    if (_firebaseAuth.currentUser?.emailVerified == true) {
      return _firebaseAuth.currentUser!.uid;
    } else {
      return '';
    }
  }
}
