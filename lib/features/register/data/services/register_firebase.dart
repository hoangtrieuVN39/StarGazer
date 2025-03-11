import 'package:stargazer/core/services/data/models/model.dart';
import 'package:stargazer/core/services/data/services/firebase_reference.dart';
import 'package:stargazer/features/register/data/models/user_register_model.dart';

class RegisterFirebase {
  final FirebaseReference firebaseReference;

  RegisterFirebase({required this.firebaseReference});

  Future<void> addUser(UserRegisterModel user) async {
    await firebaseReference.addUser(UserModel(
      id: user.id,
      email: user.email,
      name: user.name,
    ));
  }
}
