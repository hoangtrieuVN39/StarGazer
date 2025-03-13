import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart' as auth_mocks;
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_exceptions/mock_exceptions.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';
import 'package:stargazer/features/login/domain/usecase/login_email_usecase.dart';

@GenerateMocks([LoginRepository])
import 'login_email_usecase_test.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late LoginEmailUsecase loginEmailUsecase;
  late MockLoginRepository mockLoginRepository;
  late auth_mocks.MockFirebaseAuth mockFirebaseAuth;

  final testEmail = 'test@example.com';
  final testPassword = 'Password123';
  final testUid = 'test-uid-123';

  setUp(() {
    mockLoginRepository = MockLoginRepository();

    // Create a mock user for successful signin
    final mockUser = auth_mocks.MockUser(
      isAnonymous: false,
      uid: testUid,
      email: testEmail,
      displayName: 'Test User',
    );

    // Create a mock Firebase Auth instance
    mockFirebaseAuth = auth_mocks.MockFirebaseAuth(mockUser: mockUser);

    // Initialize the use case with the repository and mocked auth
    loginEmailUsecase = LoginEmailUsecase(
      loginRepository: mockLoginRepository,
      auth: mockFirebaseAuth,
    );
  });

  group('LoginEmailUsecase', () {
    test('should login user with email and password', () async {
      // Act
      final result = await loginEmailUsecase(testEmail, testPassword);

      // Assert
      expect(result, testUid);
      expect(mockFirebaseAuth.currentUser, isNotNull);
      expect(mockFirebaseAuth.currentUser!.uid, testUid);
    });

    test('should throw exception when login fails with wrong password',
        () async {
      // Setup a mock auth that will fail with wrong password
      final mockFailAuth = auth_mocks.MockFirebaseAuth(
        mockUser: auth_mocks.MockUser(uid: testUid, email: testEmail),
      );

      // Configure auth to throw exception
      whenCalling(Invocation.method(#signInWithEmailAndPassword, null, {
        #email: testEmail,
        #password: testPassword
      })).on(mockFailAuth).thenThrow(FirebaseAuthException(
            code: 'wrong-password',
            message: 'The password is invalid',
          ));

      // Use our test instance with the failing auth
      loginEmailUsecase = LoginEmailUsecase(
        loginRepository: mockLoginRepository,
        auth: mockFailAuth,
      );

      // Act & Assert
      expect(
        () => loginEmailUsecase(testEmail, testPassword),
        throwsA(isA<FirebaseAuthException>()
            .having((e) => e.code, 'code', 'wrong-password')),
      );
    });

    test('should throw exception when login fails with user not found',
        () async {
      // Setup a mock auth that will fail with user not found
      final mockFailAuth = auth_mocks.MockFirebaseAuth(
        mockUser: auth_mocks.MockUser(uid: testUid, email: testEmail),
      );

      // Configure auth to throw exception
      whenCalling(Invocation.method(#signInWithEmailAndPassword, null, {
        #email: testEmail,
        #password: testPassword
      })).on(mockFailAuth).thenThrow(FirebaseAuthException(
            code: 'user-not-found',
            message: 'No user found for that email',
          ));

      // Use our test instance with the failing auth
      loginEmailUsecase = LoginEmailUsecase(
        loginRepository: mockLoginRepository,
        auth: mockFailAuth,
      );

      // Act & Assert
      expect(
        () => loginEmailUsecase(testEmail, testPassword),
        throwsA(isA<FirebaseAuthException>()
            .having((e) => e.code, 'code', 'user-not-found')),
      );
    });
  });
}
