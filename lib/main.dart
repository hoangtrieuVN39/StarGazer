import 'package:flutter/material.dart';
import 'package:stargazer/core/routes/app_routes.dart';
import 'package:stargazer/features/home/presentation/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getPages(),
    ),
  );
}
