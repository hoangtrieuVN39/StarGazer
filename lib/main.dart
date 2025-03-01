import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stargazer/core/providers.dart';
import 'package:stargazer/core/routes/app_routes.dart';
import 'package:stargazer/features/login/presentation/bloc/login_page.dart';
import 'package:stargazer/features/setting/presentation/bloc/setting_bloc.dart';
import 'package:stargazer/features/setting/presentation/provider/setting_provider.dart';

void main() async {
  // Add this line to initialize Flutter bindings
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        Provider(create: (context) => SettingBloc()),
        ChangeNotifierProvider(create: (context) => SettingProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.initialRoute,
        routes: {
          ...AppRoutes.getPages(),
          '/login': (context) => const LoginPage(),
        },
      ),
    ),
  );
}
