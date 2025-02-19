import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/core/constants.dart';
import 'package:stargazer/features/splash/presentations/bloc/splash_bloc.dart';
import 'package:stargazer/core/utils.dart';

class SplashContainer extends StatelessWidget {
  const SplashContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (_, state) {
        if (state.state == true) {
          Navigator.pushNamed(context, RouteConstants.home);
        }
      },
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.gradientDarkBlue(1.0),
                AppColors.gradientBlue(1.0),
                AppColors.gradientPink(1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Image.asset(
              'lib/assets/images/logo/stargazer logo - gradient white.png',
              width: 200,
              height: 200,
            ),
          ),
        );
      },
    );
  }
}
