import 'package:flutter_test/flutter_test.dart';
import 'package:stargazer/features/register/domain/usecases/fields_validation_usecase.dart';

void main() {
  group('validateEmail', () {
    test('should return true for valid email', () {
      // Arrange
      const email = 'test@example.com';

      // Act
      final result = FieldsValidationUsecase.validateEmail(email);

      // Assert
      expect(result, true);
    });

    test('should return false for invalid email', () {
      // Arrange
      const invalidEmails = [
        'test',
        'test@',
        '@example.com',
        'test@example',
        ''
      ];

      // Act & Assert
      for (final email in invalidEmails) {
        final result = FieldsValidationUsecase.validateEmail(email);
        expect(result, false, reason: 'Email: $email should be invalid');
      }
    });
  });

  group('validatePassword', () {
    test('should return true for valid password (8+ characters)', () {
      // Arrange
      const validPasswords = ['Password123', '12345678', 'abcdefgh'];

      // Act & Assert
      for (final password in validPasswords) {
        final result = FieldsValidationUsecase.validatePassword(password);
        expect(result, true, reason: 'Password: $password should be valid');
      }
    });

    test('should return false for invalid password (less than 8 characters)',
        () {
      // Arrange
      const invalidPasswords = ['1234567', 'abcdef', ''];

      // Act & Assert
      for (final password in invalidPasswords) {
        final result = FieldsValidationUsecase.validatePassword(password);
        expect(result, false, reason: 'Password: $password should be invalid');
      }
    });
  });

  group('validateName', () {
    test('should return true for valid name (3+ characters)', () {
      // Arrange
      const validNames = ['John', 'Alice Smith', 'Bob'];

      // Act & Assert
      for (final name in validNames) {
        final result = FieldsValidationUsecase.validateName(name);
        expect(result, true, reason: 'Name: $name should be valid');
      }
    });

    test('should return false for invalid name (less than 3 characters)', () {
      // Arrange
      const invalidNames = ['Jo', 'A', ''];

      // Act & Assert
      for (final name in invalidNames) {
        final result = FieldsValidationUsecase.validateName(name);
        expect(result, false, reason: 'Name: $name should be invalid');
      }
    });
  });

  group('call', () {
    test('should return true when all fields are valid', () {
      // Arrange
      const email = 'test@example.com';
      const password = 'Password123';
      const name = 'John Doe';

      // Act
      final result = FieldsValidationUsecase.call(email, password, name);

      // Assert
      expect(result, true);
    });

    test('should return false when any field is invalid', () {
      // Arrange
      const validEmail = 'test@example.com';
      const validPassword = 'Password123';
      const validName = 'John Doe';

      const invalidEmail = 'test@';
      const invalidPassword = '123';
      const invalidName = 'Jo';

      // Act & Assert
      expect(
          FieldsValidationUsecase.call(invalidEmail, validPassword, validName),
          false);
      expect(
          FieldsValidationUsecase.call(validEmail, invalidPassword, validName),
          false);
      expect(
          FieldsValidationUsecase.call(validEmail, validPassword, invalidName),
          false);
      expect(
          FieldsValidationUsecase.call(
              invalidEmail, invalidPassword, invalidName),
          false);
    });
  });
}
