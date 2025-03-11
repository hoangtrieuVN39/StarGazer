import 'package:shared_preferences/shared_preferences.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';

class LoginSharedPrefsUsecase {
  final LoginRepository loginRepository;

  LoginSharedPrefsUsecase({
    required this.loginRepository,
  });

  Future<User?> call() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('isLoggedIn') == true && prefs.getString('id') != null) {
      final user = await loginRepository.getUser(prefs.getString('id') ?? '');
      return user;
    }
    return null;
  }
}
