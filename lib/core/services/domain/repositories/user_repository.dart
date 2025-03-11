import 'package:stargazer/core/services/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> getUser(String userId);
  Future<User> addUser(User user);
}
