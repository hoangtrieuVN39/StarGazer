import 'package:stargazer/features/register/data/models/user_register_model.dart';
import 'package:stargazer/features/register/domain/respitories/register_repository.dart';

class UserCreateUsecase {
  final RegisterRepository registerRepository;

  UserCreateUsecase({required this.registerRepository});

  Future<void> call(String uid, String email, String name) async {
    await registerRepository.createUser(UserRegisterModel(
      id: uid,
      email: email,
      name: name,
    ));
  }
}
