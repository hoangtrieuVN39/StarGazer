import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stargazer/core/utils/colors.dart';
import 'package:stargazer/features/setting/presentation/bloc/setting_bloc.dart';

class LanguageSelect extends StatefulWidget {
  const LanguageSelect({super.key});

  @override
  State<LanguageSelect> createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingBloc(),
      child: BlocConsumer<SettingBloc, SettingState>(
        listener: (context, state) {
          if (state.language != null) {
            index = state.language!;
          }
        },
        builder: (BuildContext context, SettingState state) {
          if (state.initialization == 0) {
            context.read<SettingBloc>().add(const SettingEvent.Initialized());
          }
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context,index);
                },
              ),
              centerTitle: true,
              actionsPadding: EdgeInsets.symmetric(horizontal: 16),
              toolbarHeight: 80,
              title: Text(
                'Language',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              backgroundColor: AppColors.coal(1.0),
            ),
            body: Container(
              color: Color.fromRGBO(53, 48, 46, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 10,
                      right: 10,
                      bottom: 30,
                    ),
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
                          index = 0;
                          context.read<SettingBloc>().add(
                            SettingEvent.LanguageChanged(0),
                          );
                        },
                        child: Center(
                          child: ListTile(
                            title: Text(
                              'English',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            trailing:
                                state.language != 0
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
                                        backgroundColor: Color.fromRGBO(
                                          53,
                                          48,
                                          46,
                                          1,
                                        ), // Bán kính của CircleAvatar // Màu nền
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
                        ),
                      ),
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
                          index = 1;
                          context.read<SettingBloc>().add(
                            SettingEvent.LanguageChanged(1),
                          );
                        },
                        child: Center(
                          child: ListTile(
                            title: Text(
                              'VietNamese',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            trailing:
                                state.language != 1
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
                                        backgroundColor: Color.fromRGBO(
                                          53,
                                          48,
                                          46,
                                          1,
                                        ), // Bán kính của CircleAvatar // Màu nền
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
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
