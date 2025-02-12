import 'dart:convert';

import 'package:stargazer/core/services/data/models/model.dart';
import 'package:http/http.dart' as http;
import 'package:stargazer/core/services/domain/entities/user.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser();
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  // final http.Client client;

  // UserRemoteDataSourceImpl({required this.client});

  // @override
  // Future<UserModel> getUser() async {
  //   final response = await _getUserFromUrl(
  //     'https://jsonplaceholder.typicode.com/users/1',
  //   );
  //   return response;
  // }

  // Future<UserModel> _getUserFromUrl(String url) async {
  //   final response = await client.get(Uri.parse(url));
  //   return UserModel.fromJson(json.decode(response.body));
  // }

  @override
  Future<UserModel> getUser() async {
    return UserModel(
      id: '1',
      name: 'John Doe',
      email: 'john.doe@example.com',
      password: 'password',
    );
  }
}
