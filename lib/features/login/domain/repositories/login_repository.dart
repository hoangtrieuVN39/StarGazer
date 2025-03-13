import 'package:stargazer/core/services/domain/entities/user.dart';

abstract class LoginRepository {
  Future<User> getUser(String userId);
}
