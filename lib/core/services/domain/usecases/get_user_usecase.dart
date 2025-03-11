import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/core/services/domain/repositories/user_repository.dart';

class GetUserUseCase {
  final UserRepository userRepository;

  GetUserUseCase({required this.userRepository});

  Future<User> call(String userId) async {
    return userRepository.getUser(userId);
  }
}
