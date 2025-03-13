import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart' as auth_mocks;
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_exceptions/mock_exceptions.dart';
import 'package:stargazer/features/register/domain/usecases/register_email_usecase.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late RegisterEmailUsecase registerEmailUsecase;
  late auth_mocks.MockFirebaseAuth mockFirebaseAuth;

  final testEmail = 'test@example.com';
  final testPassword = 'Password123';

  setUp(() {
    // Initialize the mock Firebase Auth without a mock user
    // as we want to test the actual registration flow
    mockFirebaseAuth = auth_mocks.MockFirebaseAuth();

    // Initialize the use case with mocked auth
    registerEmailUsecase = RegisterEmailUsecase(firebaseAuth: mockFirebaseAuth);
  });

  group('RegisterEmailUsecase', () {
    test('should register user with email and password', () async {
      // Act
      final result = await registerEmailUsecase(testEmail, testPassword);

      // Assert
      expect(result, isNotEmpty); // We can't predict the exact UID in this case
      expect(mockFirebaseAuth.currentUser, isNotNull);
      expect(mockFirebaseAuth.currentUser!.email, testEmail);
    });

    test(
        'should throw exception when registration fails with email already in use',
        () async {
      // Setup a mock auth that will fail with email already in use
      final mockFailAuth = auth_mocks.MockFirebaseAuth();

      // Configure auth to throw exception
      whenCalling(Invocation.method(#createUserWithEmailAndPassword, null, {
        #email: testEmail,
        #password: testPassword
      })).on(mockFailAuth).thenThrow(FirebaseAuthException(
            code: 'email-already-in-use',
            message: 'The email address is already in use by another account',
          ));

      // Use our test instance with the failing auth
      registerEmailUsecase = RegisterEmailUsecase(firebaseAuth: mockFailAuth);

      // Act & Assert
      expect(
        () => registerEmailUsecase(testEmail, testPassword),
        throwsA(isA<Exception>()),
      );
    });

    test('should throw exception when registration fails with weak password',
        () async {
      // Setup a mock auth that will fail with weak password
      final mockFailAuth = auth_mocks.MockFirebaseAuth();

      // Configure auth to throw exception
      whenCalling(Invocation.method(#createUserWithEmailAndPassword, null, {
        #email: testEmail,
        #password: testPassword
      })).on(mockFailAuth).thenThrow(FirebaseAuthException(
            code: 'weak-password',
            message: 'Password should be at least 6 characters',
          ));

      // Use our test instance with the failing auth
      registerEmailUsecase = RegisterEmailUsecase(firebaseAuth: mockFailAuth);

      // Act & Assert
      expect(
        () => registerEmailUsecase(testEmail, testPassword),
        throwsA(isA<Exception>()),
      );
    });

    test('should throw exception when registration fails with invalid email',
        () async {
      // Setup a mock auth that will fail with invalid email
      final mockFailAuth = auth_mocks.MockFirebaseAuth();

      // Configure auth to throw exception
      whenCalling(Invocation.method(#createUserWithEmailAndPassword, null, {
        #email: testEmail,
        #password: testPassword
      })).on(mockFailAuth).thenThrow(FirebaseAuthException(
            code: 'invalid-email',
            message: 'The email address is badly formatted',
          ));

      // Use our test instance with the failing auth
      registerEmailUsecase = RegisterEmailUsecase(firebaseAuth: mockFailAuth);

      // Act & Assert
      expect(
        () => registerEmailUsecase(testEmail, testPassword),
        throwsA(isA<Exception>()),
      );
    });
  });
}
