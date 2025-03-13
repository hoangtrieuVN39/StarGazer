import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart' as auth_mocks;
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mock_exceptions/mock_exceptions.dart';
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';
import 'package:stargazer/features/login/domain/usecase/login_google_usecase.dart';

@GenerateMocks([LoginRepository, GoogleSignIn])
import 'login_google_usecase_test.mocks.dart';

// Manual mocks for GoogleSignIn related classes
class MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {
  @override
  Future<GoogleSignInAuthentication> get authentication async =>
      MockGoogleSignInAuthentication();
}

class MockGoogleSignInAuthentication extends Mock
    implements GoogleSignInAuthentication {
  @override
  String? get accessToken => 'fake-access-token';

  @override
  String? get idToken => 'fake-id-token';
}

// Custom Firebase Auth mock for the third test
class FailingFirebaseAuth extends auth_mocks.MockFirebaseAuth {
  @override
  Future<UserCredential> signInWithCredential(
      AuthCredential? credential) async {
    throw FirebaseAuthException(
      code: 'account-exists-with-different-credential',
      message: 'The account already exists with a different credential',
    );
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late LoginGoogleUsecase loginGoogleUsecase;
  late MockLoginRepository mockLoginRepository;
  late auth_mocks.MockFirebaseAuth mockFirebaseAuth;
  late MockGoogleSignIn mockGoogleSignIn;

  final testEmail = 'test@example.com';
  final testUid = 'test-uid-123';
  final testDisplayName = 'Test User';

  setUp(() {
    mockLoginRepository = MockLoginRepository();
    mockGoogleSignIn = MockGoogleSignIn();

    // Create a mock user for successful signin
    final mockUser = auth_mocks.MockUser(
      isAnonymous: false,
      uid: testUid,
      email: testEmail,
      displayName: testDisplayName,
    );

    // Create a mock Firebase Auth instance
    mockFirebaseAuth = auth_mocks.MockFirebaseAuth(mockUser: mockUser);

    // Initialize the use case with the repository and mocked auth
    loginGoogleUsecase = LoginGoogleUsecase(
      loginRepository: mockLoginRepository,
      auth: mockFirebaseAuth,
      googleSignIn: mockGoogleSignIn,
    );
  });

  group('LoginGoogleUsecase', () {
    test('should login user with Google', () async {
      // Mock the Google Sign-In flow with the improved mock
      final mockGoogleAccount = MockGoogleSignInAccount();

      // Set up the authentication flow
      when(mockGoogleSignIn.signIn())
          .thenAnswer((_) async => mockGoogleAccount);

      // Act
      final result = await loginGoogleUsecase();

      // Assert
      expect(result, isA<Map<String, String>>());
      expect(result['id'], testUid);
      expect(result['email'], testEmail);
      expect(mockFirebaseAuth.currentUser, isNotNull);
      expect(mockFirebaseAuth.currentUser!.uid, testUid);

      // Verify the Google Sign-In flow was initiated
      verify(mockGoogleSignIn.signIn());
    });

    test('should throw exception when Google Sign-In is cancelled by user',
        () async {
      // Mock the cancellation by returning null
      when(mockGoogleSignIn.signIn()).thenAnswer((_) async => null);

      // Act & Assert
      expect(
        () => loginGoogleUsecase(),
        throwsA(anything), // The cancelled sign in will cause some error
      );
    });

    test('should throw exception when Firebase auth fails', () async {
      // Create a failing auth implementation
      final failingAuth = FailingFirebaseAuth();

      // Mock the Google Sign-In flow
      final mockGoogleAccount = MockGoogleSignInAccount();

      // Set up the authentication flow
      when(mockGoogleSignIn.signIn())
          .thenAnswer((_) async => mockGoogleAccount);

      // Create a new usecase with the failing auth
      final failingLoginGoogleUsecase = LoginGoogleUsecase(
        loginRepository: mockLoginRepository,
        auth: failingAuth,
        googleSignIn: mockGoogleSignIn,
      );

      // Act & Assert
      expect(
        () => failingLoginGoogleUsecase(),
        throwsA(isA<FirebaseAuthException>().having(
            (e) => e.code, 'code', 'account-exists-with-different-credential')),
      );
    });
  });
}
