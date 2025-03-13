import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';

class LoginGoogleUsecase {
  final LoginRepository loginRepository;
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;

  LoginGoogleUsecase({
    required this.loginRepository,
    FirebaseAuth? auth,
    GoogleSignIn? googleSignIn,
  })  : this.auth = auth ?? FirebaseAuth.instance,
        this.googleSignIn = googleSignIn ?? GoogleSignIn();

  Future<Map<String, String>> call() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await auth.signInWithCredential(credential);

    return {
      'id': auth.currentUser!.uid,
      'email': auth.currentUser!.email!,
    };
  }
}
