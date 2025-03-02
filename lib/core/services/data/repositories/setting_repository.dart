abstract class SettingRepository {
  Future<void> saveTheme(int theme);
  Future<void> saveLanguage(int language);
  Future<int> getTheme();
  Future<int> getLanguage();
}
