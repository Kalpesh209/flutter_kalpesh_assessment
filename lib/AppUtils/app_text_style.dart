import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_size.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_font_weight.dart';

/*
Title: AppTextStyle Used through App
Purpose:AppTextStyle Used through App
Created On:20/03/2024
Edited On:20/03/2024
Author: Kalpesh Khandla
*/

class AppTextStyle {
  // 24 Font Size

  static TextStyle ChaparralPro24Regular({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: AppFontSize.fontSize24,
        fontWeight: AppFontWeight.fontWeight400,
        color: color,
      );

  static TextStyle ChaparralPro24SemiBold({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: AppFontSize.fontSize24,
        fontWeight: AppFontWeight.fontWeight600,
        color: color,
      );

  // 12 Font Size
  static TextStyle ChaparralPro12Regular({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: AppFontSize.fontSize12,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle ChaparralPro12SemiBold({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: AppFontSize.fontSize12,
        fontWeight: AppFontWeight.fontWeight600,
        color: color,
      );

  static TextStyle poppins12Bold({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: 12,
        fontWeight: AppFontWeight.fontWeightBold,
        color: color,
      );

  static TextStyle poppins12ExtraBold({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: 12,
        fontWeight: AppFontWeight.fontWeight800,
        color: color,
      );

  // 18 Family

  static TextStyle ChaparralPro18Regular({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: AppFontSize.fontSize18,
        fontWeight: AppFontWeight.fontWeight400,
        color: color,
      );

  static TextStyle ChaparralPro18Light({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: AppFontSize.fontSize18,
        color: color,
        fontWeight: AppFontWeight.fontWeight400,
      );

  static TextStyle ChaparralPro18Medium({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: AppFontSize.fontSize18,
        color: color,
        fontWeight: AppFontWeight.fontWeight500,
      );

  static TextStyle ChaparralProSemiBold({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: AppFontSize.fontSize18,
        fontWeight: AppFontWeight.fontWeight600,
        color: color,
      );

  static TextStyle chaparralPro34SemiBold({Color? color}) => TextStyle(
        fontFamily: 'ChaparralPro',
        fontSize: AppFontSize.fontSize34,
        fontWeight: FontWeight.w600,
        color: color,
      );
}
