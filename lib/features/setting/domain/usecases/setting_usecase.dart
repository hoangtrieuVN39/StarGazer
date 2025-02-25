import 'package:stargazer/core/services/data/datasources/local/setting_local_datasource.dart';

class SettingUseCase {
  static Future<void> saveTheme(int theme) async {
    await SettingLocalDatasource().saveTheme(theme);
  }

  static Future<void> saveLanguage(int language) async {
    await SettingLocalDatasource().saveLanguage(language);
  }

  static Future<int> getTheme() async {
    int theme = await SettingLocalDatasource().getTheme();
    return theme;
  }

  static Future<int> getLanguage() async {
    int language = await SettingLocalDatasource().getLanguage();
    return language; // Trả về 0 nếu không tồn tại
  }
}
