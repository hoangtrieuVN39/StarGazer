import 'package:stargazer/core/services/data/datasources/local/login-register_local_datasource.dart';

class RemoveSharedPrefsUsecase {
  Future<void> call() async {
    return await LoginRegisterLocalDatasource().removeUser();
  }
}
