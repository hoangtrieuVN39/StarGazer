import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:stargazer/features/register/domain/usecases/register_email_usecase.dart';

@GenerateMocks([FirebaseAuth, User])
import 'register_email_test.mocks.dart';

void main() {
  late RegisterEmailUsecase registerEmailUsecase;
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp();
    registerEmailUsecase =
        RegisterEmailUsecase(firebaseAuth: FirebaseAuth.instance);
  });
  test('register email test', () async {
    final email = 'hoangtrieuVN39@gmail.com';
    final password = '123456';
    final registerEmail = await registerEmailUsecase(email, password);
    print(registerEmail);
  });
}
