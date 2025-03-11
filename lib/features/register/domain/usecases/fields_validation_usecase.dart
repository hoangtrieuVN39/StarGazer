class FieldsValidationUsecase {
  static bool validateEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  static bool validatePassword(String password) {
    return password.length >= 8;
  }

  static bool validateName(String name) {
    return name.length >= 3;
  }

  static bool call(String email, String password, String name) {
    return validateEmail(email) &&
        validatePassword(password) &&
        validateName(name);
  }
}
