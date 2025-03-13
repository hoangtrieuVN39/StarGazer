import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stargazer/features/register/domain/usecases/email_verification.dart';

@GenerateMocks([FirebaseAuth, User])
import 'email_verification_usecase_test.mocks.dart';

// Fake Firebase Auth implementation specifically for email verification testing
class FakeFirebaseAuth extends Fake implements FirebaseAuth {
  FakeUser? _currentUser;

  @override
  FakeUser? get currentUser => _currentUser;

  // Test helper methods
  void setCurrentUser(FakeUser? user) {
    _currentUser = user;
  }
}

class FakeUser extends Fake implements User {
  final String _uid;
  final String _email;
  bool _emailVerified;
  bool _sendEmailVerificationCalled = false;
  bool _shouldThrowOnVerification = false;

  FakeUser({
    required String uid,
    required String email,
    bool emailVerified = false,
  })  : _uid = uid,
        _email = email,
        _emailVerified = emailVerified;

  @override
  String get uid => _uid;

  @override
  String get email => _email;

  @override
  bool get emailVerified => _emailVerified;

  void markEmailAsVerified() {
    _emailVerified = true;
  }

  void throwOnVerification() {
    _shouldThrowOnVerification = true;
  }

  bool get wasEmailVerificationSent => _sendEmailVerificationCalled;

  @override
  Future<void> sendEmailVerification(
      [ActionCodeSettings? actionCodeSettings]) async {
    if (_shouldThrowOnVerification) {
      throw FirebaseAuthException(code: 'email-send-failed');
    }
    _sendEmailVerificationCalled = true;
  }

  @override
  Future<void> reload() async {
    // This method is called to reload user properties
  }
}

void main() {
  late EmailVerificationUsecase emailVerificationUsecase;
  late FakeFirebaseAuth fakeFirebaseAuth;
  late FakeUser fakeUser;

  setUp(() {
    fakeFirebaseAuth = FakeFirebaseAuth();
    fakeUser = FakeUser(
      uid: 'test-uid-123',
      email: 'test@example.com',
    );

    // Make the fake user the current user
    fakeFirebaseAuth.setCurrentUser(fakeUser);

    // Initialize use case with our fake auth
    emailVerificationUsecase =
        EmailVerificationUsecase(firebaseAuth: fakeFirebaseAuth);
  });

  test('should send email verification', () async {
    // Act
    await emailVerificationUsecase();

    // Assert
    expect(fakeUser.wasEmailVerificationSent, true);
  });

  test('should not throw error when currentUser is null', () async {
    // Arrange
    fakeFirebaseAuth.setCurrentUser(null);

    // Act & Assert
    expect(
      () => emailVerificationUsecase(),
      returnsNormally,
    );
  });

  test('should throw exception when sending verification email fails',
      () async {
    // Arrange
    fakeUser.throwOnVerification();

    // Act & Assert
    expect(
      () => emailVerificationUsecase(),
      throwsA(isA<FirebaseAuthException>()),
    );
  });
}
