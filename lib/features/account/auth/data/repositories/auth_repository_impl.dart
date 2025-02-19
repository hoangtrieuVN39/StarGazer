import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/user.dart';
import '../datasources/auth_remote_datasource.dart';
import '../datasources/auth_local_datasource.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<User?> signInWithEmailPassword(String email, String password) async {
    final userModel = await remoteDataSource.signInWithEmailPassword(
      email,
      password,
    );
    if (userModel != null) {
      await localDataSource.saveUser(userModel);
      return User(
        id: userModel.id,
        email: userModel.email,
        displayName: userModel.displayName,
      );
    }
    return null;
  }

  @override
  Future<User?> signInWithGoogle() async {
    final userModel = await remoteDataSource.signInWithGoogle();
    if (userModel != null) {
      await localDataSource.saveUser(userModel);
      return User(
        id: userModel.id,
        email: userModel.email,
        displayName: userModel.displayName,
      );
    }
    return null;
  }

  @override
  Future<User?> signInWithApple() async {
    final userModel = await remoteDataSource.signInWithApple();
    if (userModel != null) {
      await localDataSource.saveUser(userModel);
      return User(
        id: userModel.id,
        email: userModel.email,
        displayName: userModel.displayName,
      );
    }
    return null;
  }

  @override
  Future<void> signOut() async {
    await remoteDataSource.signOut();
    await localDataSource.clearUser();
  }

  @override
  Future<User?> getCurrentUser() async {
    final userModel = await localDataSource.getLastLoggedInUser();
    if (userModel != null) {
      return User(
        id: userModel.id,
        email: userModel.email,
        displayName: userModel.displayName,
      );
    }
    return null;
  }

  @override
  Future<User?> signUp(
    String email,
    String password,
    String? displayName,
  ) async {
    final userModel = await remoteDataSource.signUp(
      email,
      password,
      displayName,
    );
    if (userModel != null) {
      await localDataSource.saveUser(userModel);
      return User(
        id: userModel.id,
        email: userModel.email,
        displayName: userModel.displayName,
      );
    }
    return null;
  }

  @override
  Future<bool> validateEmail(String email) {
    // Email regex pattern
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return Future.value(emailRegex.hasMatch(email));
  }

  @override
  Future<bool> validatePassword(String password) {
    // Password should be at least 8 characters long, contain at least one uppercase letter,
    // one lowercase letter, one number and one special character
    final passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
    );
    return Future.value(passwordRegex.hasMatch(password));
  }
}
