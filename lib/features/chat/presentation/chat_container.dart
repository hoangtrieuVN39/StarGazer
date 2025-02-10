import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:stargazer/core/constants.dart';
import 'package:stargazer/core/utils/colors.dart';
import 'package:stargazer/features/home/presentation/bloc/home_bloc.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: state.widgets[state.index],
          bottomNavigationBar: _buildBottomNavigationBar(context),
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
      backgroundColor: AppColors.coal(1.0),
    );
  }

  _buildBottomNavigationBar(BuildContext context) {
    final List<String> labels = TextConstants.bottomNavigationBarLabels;

    return Container(
      decoration: BoxDecoration(color: AppColors.coal(1.0)),
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 24),
      child: Row(
        children: [
          Expanded(
            child: _buildBottomNavigationBarItem(
              labels[0],
              true,
              onPressed: () {
                context.read<HomeBloc>().add(HomeEvent.indexChanged(0));
              },
            ),
          ),

          Expanded(
            child: _buildBottomNavigationBarItem(
              labels[1],
              false,
              onPressed: () {
                context.read<HomeBloc>().add(HomeEvent.indexChanged(1));
              },
            ),
          ),
        ],
      ),
    );
  }

  _buildBottomNavigationBarItem(
    String label,
    bool isSelected, {
    required Function() onPressed,
  }) {
    return TextButton(
      onPressed: () => onPressed(),
      style: TextButton.styleFrom(
        backgroundColor:
            isSelected ? AppColors.rice(0.25) : AppColors.rice(0.0),
      ),
      child: Text(label, style: TextStyle(color: AppColors.rice(1.0))),
    );
  }
}




// decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           gradient: LinearGradient(
//             colors: [AppColors.rice(0.25), AppColors.rice(0.75)],
//           ),
//         ),