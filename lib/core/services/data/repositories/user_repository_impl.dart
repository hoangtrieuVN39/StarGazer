import 'package:stargazer/core/services/data/datasources/remote/user_remote_datasource.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/core/services/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl({required this.userRemoteDataSource});

  @override
  Future<User> getUser() async {
    return userRemoteDataSource.getUser();
  }
}
