abstract class LoginRegisterRepository {
  Future<void> saveUser(String id);
  Future<void> removeUser();
}
