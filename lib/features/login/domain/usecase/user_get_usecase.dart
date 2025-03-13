import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';

class UserGetUsecase {
  final LoginRepository loginRepository;

  UserGetUsecase({required this.loginRepository});

  Future<User?> call(String userId) async {
    return loginRepository.getUser(userId);
  }
}
  