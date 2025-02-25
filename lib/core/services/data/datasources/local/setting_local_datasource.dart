import 'package:shared_preferences/shared_preferences.dart';
import 'package:stargazer/core/services/data/repositories/setting_repository.dart';

class SettingLocalDatasource implements SettingRepository{
  static Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }
  @override
  Future<int> getLanguage() async {
    final prefs = await getPrefs();
    return prefs.getInt('language') ?? 0;
  }

  @override
  Future<int> getTheme() async {
    final prefs = await getPrefs();
    return prefs.getInt('theme') ?? 0;
  }

  @override
  Future<void> saveLanguage(int language) async {
    final prefs = await getPrefs();
    await prefs.setInt('language', language);
  }

  @override
  Future<void> saveTheme(int theme) async {
    final prefs = await getPrefs();
    await prefs.setInt('theme', theme);
  }
}