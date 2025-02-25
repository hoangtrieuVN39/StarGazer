import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stargazer/core/providers.dart';
import 'package:stargazer/core/routes/app_routes.dart';
import 'package:stargazer/features/setting/presentation/bloc/setting_bloc.dart';

void main() async {
  // Add this line to initialize Flutter bindings
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        Provider(create: (context) => SettingBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getPages(),
      ),
    ),
  );
}
