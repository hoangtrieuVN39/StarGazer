import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart' as auth_mocks;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stargazer/features/register/domain/usecases/email_check_verification.dart';

@GenerateMocks([FirebaseAuth, User])
import 'email_check_verification_usecase_test.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late EmailCheckVerificationUsecase emailCheckVerificationUsecase;

  group('EmailCheckVerificationUsecase', () {
    test('should return user ID when email is verified', () async {
      // Setup regular mocks since we need more control
      final mockFirebaseAuth = MockFirebaseAuth();
      final mockUser = MockUser();

      // Configure the mocks
      when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
      when(mockUser.reload()).thenAnswer((_) async => null);
      when(mockUser.emailVerified).thenReturn(true);
      when(mockUser.uid).thenReturn('test-uid-123');

      // Initialize the use case with mocked auth
      emailCheckVerificationUsecase =
          EmailCheckVerificationUsecase(firebaseAuth: mockFirebaseAuth);

      // Act
      final result = await emailCheckVerificationUsecase();

      // Assert
      expect(result, 'test-uid-123');
      verify(mockFirebaseAuth.currentUser);
      verify(mockUser.reload());
    });

    test('should return empty string when email is not verified', () async {
      // Setup regular mocks
      final mockFirebaseAuth = MockFirebaseAuth();
      final mockUser = MockUser();

      // Configure the mocks
      when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
      when(mockUser.reload()).thenAnswer((_) async => null);
      when(mockUser.emailVerified).thenReturn(false);

      // Initialize the use case with mocked auth
      emailCheckVerificationUsecase =
          EmailCheckVerificationUsecase(firebaseAuth: mockFirebaseAuth);

      // Act
      final result = await emailCheckVerificationUsecase();

      // Assert
      expect(result, '');
      verify(mockFirebaseAuth.currentUser);
      verify(mockUser.reload());
    });

    test('should return empty string when no user is signed in', () async {
      // Setup mock with no current user
      final mockFirebaseAuth = MockFirebaseAuth();
      when(mockFirebaseAuth.currentUser).thenReturn(null);

      // Initialize the use case with mocked auth
      emailCheckVerificationUsecase =
          EmailCheckVerificationUsecase(firebaseAuth: mockFirebaseAuth);

      // Act
      final result = await emailCheckVerificationUsecase();

      // Assert
      expect(result, '');
      verify(mockFirebaseAuth.currentUser);
    });
  });
}
