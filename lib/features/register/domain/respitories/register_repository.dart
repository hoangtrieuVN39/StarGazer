import 'package:stargazer/features/register/data/models/user_register_model.dart';

abstract class RegisterRepository {
  Future<void> createUser(UserRegisterModel user);
}
