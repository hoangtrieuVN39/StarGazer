import 'package:flutter/material.dart';
import 'package:stargazer/features/camera/presentation/camera_page.dart';
import 'package:stargazer/features/chat/presentation/chat_page.dart';
import 'package:stargazer/features/home/presentation/home_page.dart';
import '../constants.dart';

class AppRoutes {
  static const List<String> mainRoutes = [
    // RouteConstants.splash,
    RouteConstants.home,
    // RouteConstants.setting,
    // RouteConstants.login,
  ];

  static const List<String> homeRoutes = [
    RouteConstants.camera,
    RouteConstants.chat,
  ];

  static const List<String> cameraRoutes = [
    RouteConstants.face,
    RouteConstants.hand,
  ];

  static Map<String, WidgetBuilder> getPages() {
    return {for (var route in mainRoutes) route: (context) => getPage(route)};
  }

  static List<Widget> getHomePages() {
    return homeRoutes.map((route) => getPage(route)).toList();
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
      case RouteConstants.camera:
        return const CameraPage();
      case RouteConstants.chat:
        return const ChatPage();
      default:
        throw Exception('Route not found');
    }
  }

  static const initialRoute = RouteConstants.home;
}
