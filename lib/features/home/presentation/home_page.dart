import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/core/services/data/datasources/remote/user_remote_datasource.dart';
import 'package:stargazer/core/services/data/repositories/user_repository_impl.dart';
import 'package:stargazer/core/services/domain/usecases/get_user_usecase.dart';
import 'package:stargazer/features/home/presentation/bloc/home_bloc.dart';
import 'package:stargazer/features/home/presentation/home_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => HomeBloc(
            getUserUseCase: GetUserUseCase(
              userRepository: UserRepositoryImpl(
                userRemoteDataSource: UserRemoteDataSourceImpl(),
              ),
            ),
          ),
      child: HomeContainer(),
    );
  }
}