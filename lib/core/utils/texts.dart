import 'package:flutter/material.dart';

class AppTexts {
  static String fontFamily = 'SF Pro';
  static FontWeight fontWeightLight = FontWeight.w300;
  static FontWeight fontWeightRegular = FontWeight.w400;
  static FontWeight fontWeightMedium = FontWeight.w500;
  static FontWeight fontWeightSemibold = FontWeight.w600;
  static const Color defaultColor = Colors.white;

  static TextStyle SFProLight({
    double fontSize = 24,
    Color color = defaultColor,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeightLight,
        color: color,
      );

  static TextStyle SFProRegular({
    double fontSize = 24,
    Color color = defaultColor,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeightRegular,
      );

  static TextStyle SFProMedium({
    double fontSize = 24,
    Color color = defaultColor,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeightMedium,
      );

  static TextStyle SFProSemibold({
    double fontSize = 24,
    Color color = defaultColor,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeightSemibold,
      );
}
