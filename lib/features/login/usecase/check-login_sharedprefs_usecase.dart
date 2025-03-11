import 'package:shared_preferences/shared_preferences.dart';

class CheckLoginSharedPrefsUsecase {
  Future<List<String>?> checkLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('isLoggedIn') ?? false) {
      return [
        prefs.getString('username') ?? '',
        prefs.getString('email') ?? ''
      ];
    }
    return null;
  }
}
