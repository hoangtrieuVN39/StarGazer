import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/core/constants.dart';
import 'package:stargazer/core/providers.dart';
import 'package:stargazer/core/routes.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/core/utils/colors.dart';
import 'package:stargazer/features/home/presentation/bloc/home_bloc.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  late HomeBloc homeBloc;
  User? user;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    homeBloc = context.read<HomeBloc>();
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.user != null && user == null) {
          user = state.user;
          context.read<UserProvider>().setUser(user!);
        }
      },
      builder: (context, state) {
        if (user == null) {
          return Center(child: CircularProgressIndicator());
        }

        return Stack(
          children: [
            Scaffold(
              key: _scaffoldKey,
              body: AppRoutes.getHomePages()[state.index],
              bottomNavigationBar: _buildBottomNavigationBar(context),
              appBar: _buildAppBar(_scaffoldKey),
              drawer: _sideBar(context),
            ),
          ],
        );
      },
    );
  }

  _buildAppBar(GlobalKey<ScaffoldState> scaffoldKey) {
    return AppBar(
      centerTitle: true,
      actionsPadding: EdgeInsets.symmetric(horizontal: 16),
      toolbarHeight: 80,
      leading: IconButton(
        onPressed: () => scaffoldKey.currentState!.openDrawer(),
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
      actions: [
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(backgroundImage: NetworkImage(user?.image ?? '')),
        ),
      ],
      backgroundColor: AppColors.coal(1.0),
    );
  }

  _buildBottomNavigationBar(BuildContext context) {
    final List<String> labels = TextConstants.bottomNavigationBarLabels;

    return Container(
      decoration: BoxDecoration(color: AppColors.coal(1.0)),
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 24),
      child: Row(
        children: List.generate(
          labels.length,
          (index) => Expanded(
            child: _buildBottomNavigationBarItem(
              labels[index],
              index == homeBloc.state.index,
              onPressed: () {
                homeBloc.add(HomeEvent.indexChanged(index));
              },
            ),
          ),
        ),
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

  _sideBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: AppColors.rice(0.5), width: 2)),
        color: AppColors.coal(1.0),
      ),
      width: 320,
      child: Padding(
        padding: EdgeInsets.only(top: 64, left: 16, right: 16, bottom: 32),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _sidebarItem(
                    CircleAvatar(
                      backgroundImage: NetworkImage(user?.image ?? ''),
                      radius: 18,
                    ),
                    user?.name ?? '',
                    () {},
                    AppColors.rice(1.0),
                  ),
                  Divider(color: AppColors.rice(0.5), thickness: 2),
                  _sidebarItem(
                    Icon(Icons.home, color: AppColors.rice(1.0), size: 36),
                    'Home',
                    () {},
                    AppColors.rice(1.0),
                  ),
                  _sidebarItem(
                    Icon(Icons.settings, color: AppColors.rice(1.0), size: 36),
                    'Settings',
                    () {},
                    AppColors.rice(1.0),
                  ),
                ],
              ),
            ),
            Divider(color: AppColors.rice(0.5), thickness: 2),
            _sidebarItem(
              Icon(Icons.logout, color: AppColors.red(1.0), size: 36),
              'Logout',
              () {},
              AppColors.red(1.0),
            ),
          ],
        ),
      ),
    );
  }

  _sidebarItem(leading, title, onPressed, color) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.rice(0.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        fixedSize: Size(double.infinity, 48),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 12,
        children: [
          leading,
          Text(title, style: TextStyle(color: color, fontSize: 16)),
        ],
      ),
    );
  }
}
