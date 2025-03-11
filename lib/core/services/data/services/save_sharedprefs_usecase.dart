import 'package:stargazer/core/services/data/datasources/local/login-register_local_datasource.dart';

class SaveSharedPrefsUsecase {
  SaveSharedPrefsUsecase();

  Future<void> call(String id) async {
    return await LoginRegisterLocalDatasource().saveUser(id);
  }
}
