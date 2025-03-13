import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import for DotEnv
import 'package:firebase_core/firebase_core.dart'; // Add Firebase Core import
import 'package:stargazer/features/login/presentation/login_page.dart';
import 'package:stargazer/features/register/presentation/register_page.dart';
import 'package:stargazer/firebase_options.dart'; // Import Firebase options
import 'package:stargazer/core/providers.dart';
import 'package:stargazer/features/chat/presentation/providers/chat_provider.dart';
import 'package:stargazer/core/services/domain/usecases/send_message.dart'; // Use the correct SendMessage
import 'package:stargazer/core/services/data/repositories/chat_repository_impl.dart'; // Import for ChatRepositoryImpl
import 'package:stargazer/core/services/data/datasources/chat/gemini_datasource.dart'; // Import for GeminiDatasource

import 'package:stargazer/core/routes/app_routes.dart';
import 'package:stargazer/features/setting/presentation/bloc/setting_bloc.dart';
import 'package:stargazer/features/chat/presentation/screens/chat/chat_screen.dart';
import 'package:stargazer/features/setting/presentation/provider/setting_provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  // Initialize Firebase with the generated options
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        Provider(create: (context) => SettingBloc()),
        ChangeNotifierProvider(create: (context) => SettingProvider()),
        Provider(
          create: (context) => GeminiDatasource(),
        ), // Provide GeminiDatasource
        Provider(
          create: (context) =>
              ChatRepositoryImpl(context.read<GeminiDatasource>()),
        ), // Provide ChatRepositoryImpl with GeminiDatasource
        ChangeNotifierProvider(
          create: (context) =>
              ChatProvider(SendMessage(context.read<ChatRepositoryImpl>())),
        ), // Ensure SendMessage is instantiated with ChatRepository
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.initialRoute,
        routes: {
          ...AppRoutes.getPages(),
        },
      ),
    );
  }
}
