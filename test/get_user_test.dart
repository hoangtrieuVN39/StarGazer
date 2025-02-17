// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:stargazer/core/services/data/datasources/remote/user_remote_datasource.dart';
// import 'package:stargazer/core/services/data/models/model.dart';
// import 'package:stargazer/core/services/data/repositories/user_repository_impl.dart';
// import 'package:stargazer/core/services/domain/entities/user.dart';
// import 'package:stargazer/core/services/domain/repositories/user_repository.dart';

// @GenerateNiceMocks([
//   MockSpec<UserRemoteDataSource>(),
//   MockSpec<UserRepository>(),
// ])
// import 'get_user_test.mocks.dart';

// void main() {
//   late UserRepository userRepository;
//   late UserRemoteDataSource userRemoteDataSource;

//   setUp(() {
//     userRemoteDataSource = MockUserRemoteDataSource();
//     userRepository = UserRepositoryImpl(
//       userRemoteDataSource: userRemoteDataSource,
//     );
//   });

//   test('should return user', () async {
//     when(userRemoteDataSource.getUser()).thenAnswer(
//       (_) async => UserModel(
//         id: '1',
//         name: 'John Doe',
//         email: 'john.doe@example.com',
//         password: 'password',
//       ),
//     );

//     final user = await userRepository.getUser();

//     expect(user.id, '1');
//     expect(user.name, 'John Doe');
//     expect(user.email, 'john.doe@example.com');
//     expect(user.password, 'password');
//   });
// }
