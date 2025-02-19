import '../models/user_model.dart';
import 'auth_local_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> cacheUserData(UserModel user) async {
    // TODO: implement cacheUserData
  }

  @override
  Future<bool> clearUser() async {
    // TODO: implement clearUser
    return true;
  }

  @override
  Future<UserModel?> getLastLoggedInUser() async {
    // TODO: implement getLastLoggedInUser
    return null;
  }

  @override
  Future<bool> saveUser(UserModel user) async {
    // TODO: implement saveUser
    return true;
  }
}
