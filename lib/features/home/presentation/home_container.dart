import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:stargazer/core/constants.dart';
import 'package:stargazer/core/providers.dart';
import 'package:stargazer/core/routes.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/core/utils/colors.dart';
import 'package:stargazer/features/home/presentation/bloc/home_bloc.dart';
import 'package:stargazer/features/prediction/presentation/prediction_page.dart';
import 'package:stargazer/features/chat/presentation/screens/chat/chat_screen.dart';

import 'package:stargazer/features/setting/presentation/provider/setting_provider.dart';

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
    int text = Provider.of<SettingProvider>(context).language;
    int theme = Provider.of<SettingProvider>(context).theme;
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
              body: TabBarView(
                controller: homeBloc.tabController,
                children: [
                  state.image == null
                      ? AppRoutes.getHomePages()[0]
                      : PredictionPage(image: state.image!),
                  ChatScreen(),
                ],
              ),
              bottomNavigationBar: _buildBottomNavigationBar(
                context,
                text,
                theme,
              ),
              appBar: _buildAppBar(_scaffoldKey, theme),
              drawer: _sideBar(context, text, theme),
            ),
          ],
        );
      },
    );
  }

  _buildAppBar(GlobalKey<ScaffoldState> scaffoldKey, int theme) {
    return AppBar(
      centerTitle: true,
      actionsPadding: EdgeInsets.symmetric(horizontal: 16),
      toolbarHeight: 80,
      leading: IconButton(
        onPressed: () => scaffoldKey.currentState!.openDrawer(),
        icon: Icon(
          Icons.menu,
          color: theme == 1 ? AppColors.rice(1.0) : Colors.black,
        ),
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
      backgroundColor: theme == 1 ? AppColors.coal(1.0) : AppColors.white(0.3),
    );
  }

  _buildBottomNavigationBar(BuildContext context, int text, int theme) {
    return Container(
      color: theme == 1 ? AppColors.coal(1.0) : AppColors.white(0.5),
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 24),
      child: TabBar(
        controller: homeBloc.tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          gradient: LinearGradient(
            colors: [AppColors.rice(0.25), AppColors.rice(0.75)],
            transform: GradientRotation(pi / 4),
          ),
        ),
        dividerHeight: 0,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: theme == 1 ? AppColors.rice(1.0) : Colors.black,
        unselectedLabelColor: theme == 1 ? AppColors.rice(1.0) : Colors.black,
        tabs: [
          Tab(text: text == 0 ? 'Fortune teller' : 'Bói toán'),
          Tab(text: text == 0 ? 'Chat' : 'Trò chuyện'),
        ],
      ),
    );
  }

  _sideBar(BuildContext context, int text, int theme) {
    return Container(
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: AppColors.rice(0.5), width: 2)),
        color: theme == 1 ? AppColors.coal(1.0) : Colors.white,
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
                    theme == 1 ? AppColors.rice(1.0) : Colors.black,
                    theme,
                  ),
                  Divider(color: AppColors.rice(0.5), thickness: 2),
                  _sidebarItem(
                    Icon(
                      Icons.home,
                      color: theme == 1 ? AppColors.rice(1.0) : Colors.black,
                      size: 36,
                    ),
                    text == 0 ? 'Home' : 'Trang chủ',
                    () {},
                    theme == 1 ? AppColors.rice(1.0) : Colors.black,
                    theme,
                  ),
                  _sidebarItem(
                    Icon(
                      Icons.settings,
                      color: theme == 1 ? AppColors.rice(1.0) : Colors.black,
                      size: 36,
                    ),
                    text == 0 ? 'Settings' : 'Cài đặt',
                    () {
                      Navigator.pushNamed(context, RouteConstants.setting);
                    },
                    theme == 1 ? AppColors.rice(1.0) : Colors.black,
                    theme,
                  ),
                ],
              ),
            ),
            Divider(color: AppColors.rice(0.5), thickness: 2),
            _sidebarItem(
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [AppColors.blue(0.5), AppColors.blue(1.0)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Icon(Icons.login, color: AppColors.rice(1.0), size: 28),
              ),
              'Login',
              () {
                Navigator.pushNamed(context, RouteConstants.login);
              },
              AppColors.rice(1.0),
              theme,
            ),
            SizedBox(height: 10), // Add spacing between buttons
            _sidebarItem(
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [AppColors.red(0.5), AppColors.red(1.0)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Icon(Icons.logout, color: AppColors.rice(1.0), size: 28),
              ),
              'Logout',
              () {},
              AppColors.red(1.0),
              theme,
            ),
            //             Divider(color: AppColors.rice(0.5), thickness: 2),
            //             _sidebarItem(
            // Icon(Icons.logout, color: AppColors.red(1.0), size: 36),
            //               text==0?'Logout':'Thoát',
            //               () {Navigator.pushNamed(context, RouteConstants.login);},
            //               AppColors.red(1.0),
            //               theme
            //             ),
          ],
        ),
      ),
    );
  }

  _sidebarItem(leading, title, onPressed, color, int theme) {
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
        children: [
          leading,
          SizedBox(width: 10), // Add spacing between icon and text
          Text(title, style: TextStyle(color: color, fontSize: 16)),
        ],
      ),
    );
  }
}
