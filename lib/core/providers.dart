import 'package:flutter/material.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';

class UserProvider extends ChangeNotifier {
  User? _user;

  setUser(User user) {
    _user = user;
    notifyListeners();
  }

  User? getUser() {
    return _user;
  }
}
