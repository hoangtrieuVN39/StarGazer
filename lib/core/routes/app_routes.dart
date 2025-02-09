import 'package:flutter/material.dart';
import 'package:stargazer/features/home/presentation/home_page.dart';
import '../constants.dart';

class AppRoutes {
  static const List<String> mainRoutes = [
    // RouteConstants.splash,
    RouteConstants.home,
    // RouteConstants.setting,
    // RouteConstants.login,
  ];

  static const List<String> cameraRoutes = [
    RouteConstants.face,
    RouteConstants.hand,
  ];

  static Map<String, WidgetBuilder> getPages() {
    return {for (var route in mainRoutes) route: (context) => getPage(route)};
  }

  static Widget getPage(String route) {
    switch (route) {
      // case RouteConstants.splash:
      //   return const SplashPage();
      case RouteConstants.home:
        return const HomePage();
      // case RouteConstants.setting:
      //   return const SettingPage();
      // case RouteConstants.login:
      //   return const LoginPage();
      default:
        throw Exception('Route not found');
    }
  }

  static const initialRoute = RouteConstants.home;
}
