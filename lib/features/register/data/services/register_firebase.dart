import 'package:firebase_database/firebase_database.dart';
import 'package:stargazer/features/register/data/models/user_register_model.dart';

class RegisterFirebase {
  final DatabaseReference usersDatabaseReference;

  RegisterFirebase({required this.usersDatabaseReference});

  Future<void> createUser(UserRegisterModel user) async {
    await usersDatabaseReference.child(user.id).set({
      'id': user.id,
      'email': user.email,
      'name': user.name,
    });
  }
}
