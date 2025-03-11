import 'package:shared_preferences/shared_preferences.dart';
import 'package:stargazer/core/services/data/repositories/login-register_repository.dart';

class LoginRegisterLocalDatasource implements LoginRegisterRepository {
  @override
  Future<void> saveUser(String id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('id', id);
    await prefs.setBool('isLoggedIn', true);
  }

  @override
  Future<void> removeUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('id');
    await prefs.setBool('isLoggedIn', false);
  }
}
