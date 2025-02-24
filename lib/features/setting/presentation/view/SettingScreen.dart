import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stargazer/core/constants/route_constants.dart';
import 'package:stargazer/core/utils/colors.dart';
import 'package:stargazer/features/setting/presentation/bloc/setting_bloc.dart';

class SettingScreen extends StatefulWidget {
  final int? index;
  const SettingScreen({super.key, this.index});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  // int? theme = 0;
  // int? language = 0;
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<SettingBloc>().add(const SettingEvent.Initialized());
  //   setState(() {
  //     theme = context.read<SettingBloc>().state.theme;
  //     language = context.read<SettingBloc>().state.language;
  //   });
  // }
  int? selectedLanguage;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is int) {
      setState(() {
        print('received arg ');
        selectedLanguage = args;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        toolbarHeight: 80,
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: AppColors.coal(1.0),
      ),
      body: BlocProvider(
        create: (content) => SettingBloc(),
        child: BlocConsumer<SettingBloc, SettingState>(
          listener: (context, state) {
            if (selectedLanguage != null) {
              context.read<SettingBloc>().add(
                SettingEvent.LanguageChanged(selectedLanguage!),
              );
            }
            if (selectedLanguage != null &&
                selectedLanguage != state.language) {
              print('da thay doi');
            }
          },
          builder: (BuildContext context, SettingState state) {
            if (state.initialization == 0) {
              context.read<SettingBloc>().add(const SettingEvent.Initialized());
            }
            return Container(
              color: Color.fromRGBO(53, 48, 46, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'Language',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 58,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 0.5),
                          top: BorderSide(color: Colors.grey, width: 0.5),
                          right: BorderSide(color: Colors.grey, width: 0.5),
                          left: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(245, 223, 210, 0.25),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteConstants.language);
                        },
                        child: Center(
                          child: ListTile(
                            title: Text(
                              state.language == 0 ? 'English' : 'VietNamese',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'Appearance',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin:
                                        Alignment
                                            .topLeft, // Bắt đầu từ góc trên bên trái
                                    end:
                                        Alignment
                                            .bottomRight, // Kết thúc ở góc dưới bên phải
                                    colors: [
                                      Color.fromRGBO(
                                        242,
                                        230,
                                        238,
                                        1,
                                      ), // Màu đầu tiên
                                      Color.fromRGBO(
                                        151,
                                        125,
                                        255,
                                        1,
                                      ), // Màu thứ hai
                                    ],
                                  ), // Màu nền
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ), // Bo góc
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 7),
                              child: Text(
                                'Light',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 7),
                              child:
                                  state.theme != 0
                                      ? InkWell(
                                        onTap: () {
                                          context.read<SettingBloc>().add(
                                            SettingEvent.ThemeChanged(0),
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape:
                                                BoxShape
                                                    .circle, // Đảm bảo hình dạng là hình tròn
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ), // Viền màu xám
                                          ),
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Color.fromRGBO(
                                              53,
                                              48,
                                              46,
                                              1,
                                            ), // Bán kính của CircleAvatar // Màu nền
                                          ),
                                        ),
                                      )
                                      : SvgPicture.asset(
                                        'lib/assets/svgs/check.svg',
                                        width: 22.0,
                                        height: 22.0,
                                        // ignore: deprecated_member_use
                                        color: Colors.lightBlue,
                                      ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin:
                                        Alignment
                                            .topLeft, // Bắt đầu từ góc trên bên trái
                                    end:
                                        Alignment
                                            .bottomRight, // Kết thúc ở góc dưới bên phải
                                    colors: [
                                      Color(0xFF0033FF), // Màu đầu tiên
                                      Color(0xFF00033D), // Màu thứ hai
                                    ],
                                  ), // Màu nền
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ), // Bo góc
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, top: 7),
                              child: Text(
                                'Dark',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 40, top: 7),
                              child:
                                  state.theme != 1
                                      ? InkWell(
                                        onTap: () {
                                          context.read<SettingBloc>().add(
                                            SettingEvent.ThemeChanged(1),
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape:
                                                BoxShape
                                                    .circle, // Đảm bảo hình dạng là hình tròn
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ), // Viền màu xám
                                          ),
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Color.fromRGBO(
                                              53,
                                              48,
                                              46,
                                              1,
                                            ), // Bán kính của CircleAvatar // Màu nền
                                          ),
                                        ),
                                      )
                                      : SvgPicture.asset(
                                        'lib/assets/svgs/check.svg',
                                        width: 22.0,
                                        height: 22.0,
                                        // ignore: deprecated_member_use
                                        color: Colors.lightBlue,
                                      ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
