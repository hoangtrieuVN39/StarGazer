import 'package:stargazer/core/services/data/models/model.dart'; // Keep this import for UserModel
// Removed unused imports
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:stargazer/core/services/domain/entities/user.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser();
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  @override
  Future<UserModel> getUser() async {
    return UserModel(
      id: '1',
      name: 'John Doe',
      email: 'john.doe@example.com',
      password: 'password',
      image:
          'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
    );
  }
}
