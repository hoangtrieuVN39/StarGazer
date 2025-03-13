import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stargazer/features/register/data/models/user_register_model.dart';
import 'package:stargazer/features/register/domain/respitories/register_repository.dart';
import 'package:stargazer/features/register/domain/usecases/user_create_usecase.dart';

@GenerateMocks([RegisterRepository])
import 'user_create_usecase_test.mocks.dart';

void main() {
  late UserCreateUsecase userCreateUsecase;
  late MockRegisterRepository mockRegisterRepository;

  setUp(() {
    mockRegisterRepository = MockRegisterRepository();
    userCreateUsecase =
        UserCreateUsecase(registerRepository: mockRegisterRepository);
  });

  final testUid = 'test-uid-123';
  final testEmail = 'test@example.com';
  final testName = 'Test User';

  test('should create user with provided details', () async {
    // Arrange
    final expectedUserModel = UserRegisterModel(
      id: testUid,
      email: testEmail,
      name: testName,
    );

    when(mockRegisterRepository.createUser(any)).thenAnswer((_) async => null);

    // Act
    await userCreateUsecase(testUid, testEmail, testName);

    // Assert - use a single verification and capture the argument
    final captor = verify(mockRegisterRepository.createUser(captureAny));
    final capturedArgument = captor.captured.single;

    // Check that the captured value matches our expectations
    expect(capturedArgument.id, expectedUserModel.id);
    expect(capturedArgument.email, expectedUserModel.email);
    expect(capturedArgument.name, expectedUserModel.name);
  });

  test('should throw exception when repository fails', () async {
    // Arrange
    when(mockRegisterRepository.createUser(any))
        .thenThrow(Exception('Failed to create user'));

    // Act & Assert
    expect(
      () => userCreateUsecase(testUid, testEmail, testName),
      throwsA(isA<Exception>()),
    );
  });
}
