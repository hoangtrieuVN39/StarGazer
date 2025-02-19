import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/user.dart';

class CheckAuthStatus {
  final AuthRepository repository;

  CheckAuthStatus(this.repository);

  Future<User?> call() async {
    try {
      return await repository.getCurrentUser();
    } catch (e) {
      return null;
    }
  }
}
