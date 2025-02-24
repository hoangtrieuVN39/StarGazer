import 'package:shared_preferences/shared_preferences.dart';

class SettingUseCase {
  static Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  static Future<void> saveTheme(int theme) async {
    final prefs = await getPrefs();
    print('saving theme');
    await prefs.setInt('theme', theme);
  }

  static Future<void> saveLanguage(int language) async {
    final prefs = await getPrefs();
    print('saving language');
    await prefs.setInt('language', language);
  }

  static Future<int> getTheme() async {
    print('getting theme');
    final prefs = await getPrefs();
    print(prefs.getInt('theme'));
    return prefs.getInt('theme') ?? 0; // Trả về 0 nếu không tồn tại
  }

  static Future<int> getLanguage() async {
    print('getting language');
    final prefs = await getPrefs();
    print(prefs.getInt('language'));
    return prefs.getInt('language') ?? 0; // Trả về 0 nếu không tồn tại
  }
}