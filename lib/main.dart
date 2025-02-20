import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:stargazer/core/providers.dart';
import 'package:stargazer/core/routes/app_routes.dart';
import 'package:stargazer/features/setting/presentation/bloc/setting_bloc.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: BlocProvider(
        create: (context) => SettingBloc(),
        child: BlocConsumer<SettingBloc,SettingState>(
          listener: (context, state) {},
          builder: (BuildContext context, SettingState state) {
            return MaterialApp(
              theme: state.theme == 0 ? ThemeData.light() : ThemeData.dark().copyWith(
                scaffoldBackgroundColor: Color.fromRGBO(53, 48, 46, 1),
                canvasColor: Color(0xFF2A2D3E),
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: AppRoutes.initialRoute,
              routes: AppRoutes.getPages(),
            );
          } ,
        ),
      ) ,
    ),
  );
}
