import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stargazer/core/providers.dart';
import 'package:stargazer/core/routes/app_routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getPages(),
      ),
    ),
  );
}
