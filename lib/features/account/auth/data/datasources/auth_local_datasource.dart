import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';

abstract class AuthLocalDataSource {
  Future<UserModel?> getLastLoggedInUser();
  Future<bool> saveUser(UserModel user);
  Future<bool> clearUser();
  Future<void> cacheUserData(UserModel user);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;
  final String userKey = 'LOGGED_IN_USER';

  AuthLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<UserModel?> getLastLoggedInUser() async {
    final userString = sharedPreferences.getString(userKey);
    if (userString != null) {
      return UserModel.fromJson(json.decode(userString));
    }
    return null;
  }

  @override
  Future<bool> saveUser(UserModel user) async {
    return await sharedPreferences.setString(
      userKey,
      json.encode(user.toJson()),
    );
  }

  @override
  Future<bool> clearUser() async {
    return await sharedPreferences.remove(userKey);
  }

  @override
  Future<void> cacheUserData(UserModel user) async {
    // Implementation needed
  }
}
