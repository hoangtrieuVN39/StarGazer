import 'package:stargazer/core/services/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> getUser();
}
