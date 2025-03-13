// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:mockito/annotations.dart';
// import 'package:stargazer/features/register/domain/usecases/email_verification.dart';

// @GenerateMocks([FirebaseAuth, User])
// import 'email_verification_test.mocks.dart';

// void main() {
//   late MockFirebaseAuth mockFirebaseAuth;
//   late EmailVerificationUsecase emailVerificationUsecase;
//   late MockUser mockUser;

//   setUp(() {
//     mockFirebaseAuth = MockFirebaseAuth();
//     emailVerificationUsecase =
//         EmailVerificationUsecase(firebaseAuth: mockFirebaseAuth);
//     mockUser = MockUser();
//   });
//   test('Email verification test', () async {
//     when(mockUser.uid).thenReturn('123');
//     when(mockUser.email).thenReturn('hoangtrieuVN39@gmail.com');
//     when(mockUser.emailVerified).thenReturn(true);
//     when(mockFirebaseAuth.currentUser).thenReturn(mockUser);

//     final email = 'hoangtrieuVN39@gmail.com';
//     final emailVerification = await emailVerificationUsecase();
//     print(emailVerification);
//   });
// }
