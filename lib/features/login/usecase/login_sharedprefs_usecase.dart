import 'package:shared_preferences/shared_preferences.dart';

class LoginSharedPrefsUsecase {
  Future<void> call(String username, String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString('email', email);
    await prefs.setBool('isLoggedIn', true);
  }
}
