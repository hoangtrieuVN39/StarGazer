import '../models/user_model.dart';
import 'auth_remote_datasource.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserModel?> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    // Giả lập đăng nhập thành công
    return UserModel(id: '1', email: email, displayName: 'Test User');
  }

  @override
  Future<UserModel?> signInWithGoogle() async {
    // Giả lập đăng nhập Google
    return UserModel(
      id: '2',
      email: 'test@gmail.com',
      displayName: 'Google User',
    );
  }

  @override
  Future<UserModel?> signInWithApple() async {
    // Giả lập đăng nhập Apple
    return UserModel(
      id: '3',
      email: 'test@apple.com',
      displayName: 'Apple User',
    );
  }

  @override
  Future<void> signOut() async {
    // Giả lập đăng xuất
  }

  @override
  Future<UserModel?> signUp(
    String email,
    String password,
    String? displayName,
  ) async {
    // Giả lập đăng ký
    return UserModel(id: '4', email: email, displayName: displayName);
  }

  @override
  Future<void> signIn(String email, String password) async {
    // Giả lập đăng nhập
  }
}
