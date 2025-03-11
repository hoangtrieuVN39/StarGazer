import 'package:shared_preferences/shared_preferences.dart';

class LogoutSharedPrefsUsecase {
  Future<void> call() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    await prefs.remove('username');
    await prefs.remove('email');
  }
}
