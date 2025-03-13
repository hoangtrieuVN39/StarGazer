# Unit Tests for Login and Register Use Cases

This directory contains unit tests for the login and register use cases of the StarGazer application.

## Test Files

### Register Use Cases
- `register_email_usecase_test.dart` - Tests for email registration functionality
- `register_google_usecase_test.dart` - Tests for Google registration functionality
- `user_create_usecase_test.dart` - Tests for user creation in database
- `fields_validation_usecase_test.dart` - Tests for input field validation
- `email_verification_usecase_test.dart` - Tests for sending email verification
- `email_check_verification_usecase_test.dart` - Tests for checking email verification status

### Login Use Cases
- `login_email_usecase_test.dart` - Tests for email login functionality
- `login_google_usecase_test.dart` - Tests for Google login functionality
- `user_get_usecase_test.dart` - Tests for retrieving user information
- `auth_state_change_usecase_test.dart` - Tests for monitoring authentication state changes

## Firebase Auth Testing Guide

### Approach 1: Using Mockito Mocks

```dart
// Generate mocks with Mockito
@GenerateMocks([FirebaseAuth, User])
import 'your_test_file.mocks.dart';

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late MockUser mockUser;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockUser = MockUser();
    
    // Configure mock behavior
    when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
    when(mockUser.uid).thenReturn('test-uid-123');
  });
  
  test('test with mocked Firebase Auth', () {
    // Use mockFirebaseAuth in your tests
  });
}
```

### Approach 2: Using Fake Implementations (Recommended)

Fake implementations provide more control over testing scenarios, especially for authentication flows:

```dart
// Create fake Firebase Auth implementation
class FakeFirebaseAuth extends Fake implements FirebaseAuth {
  User? _currentUser;
  
  @override
  User? get currentUser => _currentUser;
  
  void setCurrentUser(User? user) {
    _currentUser = user;
  }
  
  @override
  Stream<User?> authStateChanges() {
    // Return a stream that you can control in tests
    return _authStateController.stream;
  }
}

class FakeUser extends Fake implements User {
  final String _uid;
  bool _emailVerified;
  
  FakeUser({required String uid, bool emailVerified = false})
      : _uid = uid, _emailVerified = emailVerified;
  
  @override
  String get uid => _uid;
  
  @override
  bool get emailVerified => _emailVerified;
  
  // Add custom methods to control behavior in tests
  void markEmailAsVerified() {
    _emailVerified = true;
  }
}
```

### Testing Auth State Changes

For testing auth state changes, use a `StreamController` to control auth state:

```dart
class FakeFirebaseAuth extends Fake implements FirebaseAuth {
  final StreamController<User?> _controller = StreamController<User?>.broadcast();
  
  @override
  Stream<User?> authStateChanges() => _controller.stream;
  
  // Test helpers
  void signIn(User user) {
    _currentUser = user;
    _controller.add(user);  // Simulate auth state change
  }
  
  void signOut() {
    _currentUser = null;
    _controller.add(null);  // Simulate sign out
  }
}
```

### Testing Email Verification

Use custom properties to track verification states:

```dart
class FakeUser extends Fake implements User {
  bool _verificationEmailSent = false;
  
  @override
  Future<void> sendEmailVerification() async {
    _verificationEmailSent = true;
  }
  
  // Test helper
  bool get wasVerificationEmailSent => _verificationEmailSent;
}
```

## Running the Tests

Before running the tests, you need to generate the mock files. The tests use Mockito for mocking dependencies.

1. First, make sure you have the required dependencies installed:
   ```
   flutter pub get
   ```

2. Generate the mock files:
   ```
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

3. Run a specific test:
   ```
   flutter test test/features/login/domain/usecases/login_email_usecase_test.dart
   ```

4. Run all tests:
   ```
   flutter test
   ```

## Notes

- The tests use a mix of Mockito mocks and custom fake implementations for Firebase auth.
- Fake implementations are preferred for Firebase services as they give more control over testing scenarios.
- Each test follows the Arrange-Act-Assert pattern.
- These tests verify that use cases correctly interact with their dependencies and handle both success and error cases.
- For handling static access patterns (like FirebaseAuth.instance), we use property injection in the setUp methods. 