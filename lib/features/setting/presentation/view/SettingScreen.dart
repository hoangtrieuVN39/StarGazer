import 'package:flutter/material.dart';
import 'package:stargazer/core/utils/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        toolbarHeight: 80,
        title: Text('Settings' , style: TextStyle(fontSize: 24 , color: Colors.white),),
        backgroundColor: AppColors.coal(1.0),
      ),
    );
  }
}

