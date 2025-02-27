import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:stargazer/core/constants/route_constants.dart';
import 'package:stargazer/core/constants/text_constants.dart';
import 'package:stargazer/core/utils/colors.dart';
import 'package:stargazer/features/setting/presentation/bloc/setting_bloc.dart';
import 'package:stargazer/features/setting/presentation/provider/setting_provider.dart';

class SettingScreen extends StatefulWidget {
  final int? index;
  const SettingScreen({super.key, this.index});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int? selectedLanguage;

  void yourFunction(int index) {
    setState(() {
      selectedLanguage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    dynamic text = Provider.of<SettingProvider>(context, listen: false).language;
    dynamic theme = Provider.of<SettingProvider>(context).theme; 
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color:theme ==1 ? Colors.white : Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        toolbarHeight: 80,
        title: Text(
          text == 0 ? TextConstants.setting : TextConstants_Vietnam.setting,
          style: TextStyle(fontSize: 24, color:theme == 1? Colors.white : Colors.black),
        ),
        backgroundColor:theme == 1? AppColors.coal(1.0) : AppColors.rice(0.3),
      ),
      body: BlocProvider(
        create: (content) => SettingBloc(),
        child: BlocConsumer<SettingBloc, SettingState>(
          listener: (context, state) {},
          builder: (BuildContext context, SettingState state) {
            if (state.initialization == 0) {
              context.read<SettingBloc>().add(const SettingEvent.Initialized());
              selectedLanguage = state.language;
            }
            return Container(
              color:theme == 1? Color.fromRGBO(53, 48, 46, 1) : AppColors.white(1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      text == 0 ? TextConstants.language : TextConstants_Vietnam.language,
                      style : TextStyle(fontSize: 22, color:theme ==1 ? Colors.white : Colors.black),
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
                          Navigator.pushNamed(
                            context,
                            RouteConstants.language,
                          ).then((result) {
                            if (result != null) {
                              context
                                  .findAncestorStateOfType<
                                    _SettingScreenState
                                  >()
                                  ?.yourFunction(result as int);
                            }
                          });
                        },
                        child: Center(
                          child: ListTile(
                            title: Text(
                              selectedLanguage == 0 ? 'English' : 'VietNamese',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color:theme ==1 ? Colors.white: Colors.black,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color:theme ==1 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      text == 0 ? TextConstants.theme : TextConstants_Vietnam.theme,
                      style: TextStyle(fontSize: 22, color:theme ==1? Colors.white : Colors.black),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            context.read<SettingBloc>().add(
                              SettingEvent.ThemeChanged(0),
                            );
                            Provider.of<SettingProvider>(
                              context,
                              listen: false,
                            ).changeTheme(0);
                          },
                          child: Column(
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
                                  text==0?'Light':'Nền sáng',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color:theme ==1? Colors.white : Colors.black,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 7),
                                child:
                                    state.theme != 0
                                        ? Container(
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
                                            backgroundColor:theme == 1? Color.fromRGBO(
                                              53,
                                              48,
                                              46,
                                              1,
                                            ) : AppColors.white(0.5), // Bán kính của CircleAvatar // Màu nền
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
                        ),
                        InkWell(
                          onTap: () {
                            context.read<SettingBloc>().add(
                              SettingEvent.ThemeChanged(1),
                            );
                            Provider.of<SettingProvider>(
                              context,
                              listen: false,
                            ).changeTheme(1);
                          },
                          child: Column(
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
                                  text==0?'Dark':'Nền tối',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color:theme ==1? Colors.white : Colors.black,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 40, top: 7),
                                child:
                                    state.theme != 1
                                        ? Container(
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
                                            backgroundColor:theme ==1 ? Color.fromRGBO(
                                              53,
                                              48,
                                              46,
                                              1,
                                            ) : AppColors.white(0.5), // Bán kính của CircleAvatar // Màu nền
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
