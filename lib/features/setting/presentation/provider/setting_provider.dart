import 'package:flutter/material.dart';
import 'package:stargazer/core/services/data/datasources/local/setting_local_datasource.dart';

class SettingProvider extends ChangeNotifier {
  int _language = 0;
  int _theme = 1;

  int get language => _language;
  int get theme => _theme;

  SettingProvider() {
    loadSettings();
  }

  Future<void> loadSettings() async {
    _language = await SettingLocalDatasource().getLanguage();
    _theme = await SettingLocalDatasource().getTheme();
    notifyListeners();
  }

  void changeLanguage(int index) {
    _language = index;
    notifyListeners();
  }

  void changeTheme(int index) {
    _theme = index;
    notifyListeners();
  }
}
