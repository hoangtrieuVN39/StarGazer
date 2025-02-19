import '../entities/user.dart';

abstract class AuthRepository {
  Future<User?> signInWithEmailPassword(String email, String password);
  Future<User?> signInWithGoogle();
  Future<User?> signInWithApple();
  Future<void> signOut();
  Future<User?> getCurrentUser();
  Future<User?> signUp(String email, String password, String? displayName);
  Future<bool> validateEmail(String email);
  Future<bool> validatePassword(String password);
}
