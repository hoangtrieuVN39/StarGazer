import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:stargazer/core/services/domain/entities/user.dart';

abstract class LoginRepository {
  Future<User> getUser(String userId);
}
