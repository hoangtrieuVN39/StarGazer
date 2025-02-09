import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/core/constants.dart';
import 'package:stargazer/core/utils/colors.dart';
import 'package:stargazer/features/home/presentation/bloc/home_bloc.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: state.widgets[state.index],
          bottomNavigationBar: _buildBottomNavigationBar(),
          appBar: _buildAppBar(),
        );
      },
    );
  }

  _buildAppBar() {
    return AppBar(
      centerTitle: true,
      actionsPadding: EdgeInsets.symmetric(horizontal: 16),
      toolbarHeight: 80,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu, color: AppColors.rice(1.0)),
      ),

      title: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [AppColors.rice(1.0), AppColors.blue(1.0)],
            transform: GradientRotation(pi / 4),
          ).createShader(bounds);
        },
        child: Text(
          AppConstants.appName,
          style: TextStyle(color: AppColors.rice(1.0)),
        ),
      ),
      actions: [IconButton(onPressed: () {}, icon: CircleAvatar())],
      centerTitle: true,
      backgroundColor: AppColors.coal(1.0),
    );
  }

  Widget _buildBottomNavigationBar() {
    final List<String> labels = TextConstants.bottomNavigationBarLabels;

    return Container(
      decoration: BoxDecoration(color: AppColors.coal(1.0)),
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 24),
      child: Row(
        children: [
          Expanded(child: _buildBottomNavigationBarItem(labels[0], true)),
          Expanded(child: _buildBottomNavigationBarItem(labels[1], false)),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBarItem(String label, bool isSelected) {
    return TextButton(
      onPressed: () {},
      child: Text(label, style: TextStyle(color: AppColors.rice(1.0))),
      style: TextButton.styleFrom(
        backgroundColor:
            isSelected ? AppColors.rice(0.25) : AppColors.rice(0.0),
      ),
    );
  }
}




// decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           gradient: LinearGradient(
//             colors: [AppColors.rice(0.25), AppColors.rice(0.75)],
//           ),
//         ),