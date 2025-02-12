import 'package:flutter/material.dart';
import 'package:stargazer/core/services/data/datasources/remote/user_remote_datasource.dart';
import 'package:stargazer/core/services/data/repositories/user_repository_impl.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/core/services/domain/usecases/get_user_usecase.dart';

class UserProvider extends ChangeNotifier {
  UserProvider() {
    getUserFromRemote();
  }
  User? user;

  setUser(User user) {
    this.user = user;
    notifyListeners();
  }

  User? getUser() {
    return user;
  }

  getUserFromRemote() async {
    final user =
        await GetUserUseCase(
          userRepository: UserRepositoryImpl(
            userRemoteDataSource: UserRemoteDataSourceImpl(),
          ),
        ).call();
    setUser(user);
  }
}
