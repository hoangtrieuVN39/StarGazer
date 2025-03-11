import 'package:stargazer/core/services/data/models/model.dart';
import 'package:stargazer/core/services/data/services/firebase_reference.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final FirebaseReference firebaseReference;

  LoginRepositoryImpl({required this.firebaseReference});

  @override
  Future<User> getUser(String userId) async {
    try {
      final snapshot = await firebaseReference.getUserByID(userId).get();
      final userModel = UserModel.fromJson(snapshot.value);
      final user = User(
        id: userModel.id,
        name: userModel.name,
        email: userModel.email,
        image: userModel.image,
      );
      return user;
    } catch (e) {
      throw Exception(e);
    }
  }
}
