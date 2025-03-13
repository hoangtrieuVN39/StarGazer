import 'package:stargazer/core/services/data/datasources/remote/user_remote_datasource.dart';
import 'package:stargazer/core/services/data/models/model.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/core/services/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl({required this.userRemoteDataSource});

  @override
  Future<User?> getUser(String userId) async {
    return userRemoteDataSource.getUser(userId);
  }

  @override
  Future<User> addUser(User user) async {
    try {
      return userRemoteDataSource.addUser(UserModel(
        id: user.id,
        name: user.name,
        email: user.email,
        image: user.image,
      ));
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
