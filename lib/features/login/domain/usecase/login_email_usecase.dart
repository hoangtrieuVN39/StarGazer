import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';

class LoginEmailUsecase {
  final LoginRepository loginRepository;

  LoginEmailUsecase({required this.loginRepository});

  Future<User> call(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user =
        await loginRepository.getUser(FirebaseAuth.instance.currentUser!.uid);
    return user;
  }
}
