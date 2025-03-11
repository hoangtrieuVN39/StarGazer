import 'package:stargazer/features/register/data/models/user_register_model.dart';
import 'package:stargazer/features/register/domain/respitories/register_repository.dart';
import '../services/register_firebase.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final RegisterFirebase registerFirebase;

  RegisterRepositoryImpl({required this.registerFirebase});

  @override
  Future<void> createUser(UserRegisterModel user) async {
    await registerFirebase.createUser(user);
  }
}
