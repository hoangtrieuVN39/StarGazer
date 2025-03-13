import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stargazer/features/register/domain/usecases/register_google_usecase.dart';

@GenerateMocks([
  FirebaseAuth,
  GoogleSignIn,
  GoogleSignInAccount,
  GoogleSignInAuthentication,
  UserCredential,
  User
])
import 'register_google_usecase_test.mocks.dart';

void main() {
  late RegisterGoogleUsecase registerGoogleUsecase;
  late MockFirebaseAuth mockFirebaseAuth;
  late MockGoogleSignIn mockGoogleSignIn;
  late MockGoogleSignInAccount mockGoogleSignInAccount;
  late MockGoogleSignInAuthentication mockGoogleSignInAuthentication;
  late MockUserCredential mockUserCredential;
  late MockUser mockUser;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockGoogleSignIn = MockGoogleSignIn();
    mockGoogleSignInAccount = MockGoogleSignInAccount();
    mockGoogleSignInAuthentication = MockGoogleSignInAuthentication();
    mockUserCredential = MockUserCredential();
    mockUser = MockUser();

    registerGoogleUsecase = RegisterGoogleUsecase(
      googleSignIn: mockGoogleSignIn,
      firebaseAuth: mockFirebaseAuth,
    );
  });

  final testEmail = 'test@example.com';
  final testUid = 'test-uid-123';
  final testAccessToken = 'test-access-token';
  final testIdToken = 'test-id-token';

  test('should register user with Google and return user ID and email',
      () async {
    // Arrange
    when(mockGoogleSignIn.signIn())
        .thenAnswer((_) async => mockGoogleSignInAccount);
    when(mockGoogleSignInAccount.authentication)
        .thenAnswer((_) async => mockGoogleSignInAuthentication);
    when(mockGoogleSignInAuthentication.accessToken)
        .thenReturn(testAccessToken);
    when(mockGoogleSignInAuthentication.idToken).thenReturn(testIdToken);
    when(mockFirebaseAuth.signInWithCredential(any))
        .thenAnswer((_) async => mockUserCredential);
    when(mockUserCredential.user).thenReturn(mockUser);
    when(mockUser.uid).thenReturn(testUid);
    when(mockUser.email).thenReturn(testEmail);

    // Act
    final result = await registerGoogleUsecase();

    // Assert
    expect(result, [testUid, testEmail]);
    verify(mockGoogleSignIn.signIn());
    verify(mockGoogleSignInAccount.authentication);
    verify(mockFirebaseAuth.signInWithCredential(any));
  });

  test('should throw exception when Google sign-in fails', () async {
    // Arrange
    when(mockGoogleSignIn.signIn())
        .thenThrow(Exception('Google sign-in failed'));

    // Act & Assert
    expect(
      () => registerGoogleUsecase(),
      throwsA(isA<Exception>()),
    );
  });

  test('should throw exception when credential authentication fails', () async {
    // Arrange
    when(mockGoogleSignIn.signIn())
        .thenAnswer((_) async => mockGoogleSignInAccount);
    when(mockGoogleSignInAccount.authentication)
        .thenAnswer((_) async => mockGoogleSignInAuthentication);
    when(mockGoogleSignInAuthentication.accessToken)
        .thenReturn(testAccessToken);
    when(mockGoogleSignInAuthentication.idToken).thenReturn(testIdToken);
    when(mockFirebaseAuth.signInWithCredential(any))
        .thenThrow(FirebaseAuthException(code: 'invalid-credential'));

    // Act & Assert
    expect(
      () => registerGoogleUsecase(),
      throwsA(isA<FirebaseAuthException>()),
    );
  });
}
