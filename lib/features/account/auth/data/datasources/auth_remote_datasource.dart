import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel?> signInWithEmailPassword(String email, String password);
  Future<UserModel?> signInWithGoogle();
  Future<UserModel?> signInWithApple();
  Future<void> signOut();
  Future<UserModel?> signUp(String email, String password, String? displayName);
  Future<void> signIn(String email, String password);
}
