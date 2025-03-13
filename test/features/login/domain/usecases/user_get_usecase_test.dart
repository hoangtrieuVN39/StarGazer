import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stargazer/core/services/domain/entities/user.dart' as app;
import 'package:stargazer/features/login/domain/repositories/login_repository.dart';
import 'package:stargazer/features/login/domain/usecase/user_get_usecase.dart';

@GenerateMocks([LoginRepository])
import 'user_get_usecase_test.mocks.dart';

void main() {
  late UserGetUsecase userGetUsecase;
  late MockLoginRepository mockLoginRepository;

  setUp(() {
    mockLoginRepository = MockLoginRepository();
    userGetUsecase = UserGetUsecase(loginRepository: mockLoginRepository);
  });

  group('UserGetUsecase', () {
    final testUserId = 'test-user-123';
    final testUser = app.User(
      id: testUserId,
      name: 'Test User',
      email: 'test@example.com',
      image: 'https://example.com/avatar.png',
    );

    test('should get user details from repository', () async {
      // Arrange
      when(mockLoginRepository.getUser(testUserId))
          .thenAnswer((_) async => testUser);

      // Act
      final result = await userGetUsecase(testUserId);

      // Assert
      expect(result, equals(testUser));
      verify(mockLoginRepository.getUser(testUserId));
    });

    test('should return null when user is not found', () async {
      // Arrange
      when(mockLoginRepository.getUser(testUserId))
          .thenAnswer((_) async => null);

      // Act
      final result = await userGetUsecase(testUserId);

      // Assert
      expect(result, isNull);
      verify(mockLoginRepository.getUser(testUserId));
    });

    test('should propagate exceptions from repository', () async {
      // Arrange
      when(mockLoginRepository.getUser(testUserId))
          .thenThrow(Exception('User not found'));

      // Act & Assert
      expect(
        () => userGetUsecase(testUserId),
        throwsA(isA<Exception>()),
      );
      verify(mockLoginRepository.getUser(testUserId));
    });
  });
}
