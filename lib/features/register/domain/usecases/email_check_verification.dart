import 'package:firebase_auth/firebase_auth.dart';

class EmailCheckVerificationUsecase {
  final FirebaseAuth firebaseAuth;

  EmailCheckVerificationUsecase({
    FirebaseAuth? firebaseAuth,
  }) : this.firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  Future<String> call() async {
    await firebaseAuth.currentUser?.reload();
    if (firebaseAuth.currentUser?.emailVerified == true) {
      return firebaseAuth.currentUser!.uid;
    } else {
      return '';
    }
  }
}
