import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class RegisterGoogleUsecase {
  final GoogleSignIn googleSignIn;
  final FirebaseAuth firebaseAuth;

  RegisterGoogleUsecase(
      {required this.googleSignIn, required this.firebaseAuth});

  Future<List<String>> call() async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken);
    final userCredential = await firebaseAuth.signInWithCredential(credential);
    return [userCredential.user!.uid, userCredential.user!.email!];
  }
}
