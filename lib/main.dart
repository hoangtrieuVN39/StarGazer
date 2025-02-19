import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/account/auth/presentation/screens/login_screen.dart';
import 'features/account/auth/presentation/bloc/auth_bloc.dart';
import 'features/account/auth/data/repositories/auth_repository_impl.dart';
import 'features/account/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'features/account/auth/data/datasources/auth_local_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(sharedPreferences: sharedPreferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  const MyApp({super.key, required this.sharedPreferences});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => AuthBloc(
            AuthRepositoryImpl(
              AuthRemoteDataSourceImpl(),
              AuthLocalDataSourceImpl(sharedPreferences),
            ),
          ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StarGazer',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const LoginScreen(),
      ),
    );
  }
}
