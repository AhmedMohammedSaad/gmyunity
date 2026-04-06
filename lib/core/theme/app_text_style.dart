import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';

class AppTextStyle {
  static TextStyle lexend60 = TextStyle(
    fontSize: 60.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Lexend',
  );

  static TextStyle lexend48 = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Lexend',
  );

  static TextStyle lexend24Red = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryRedGym,
    fontFamily: 'Lexend',
  );

  static TextStyle inter18Gray = TextStyle(
    fontSize: 18.sp,
    color: Colors.grey,
    fontFamily: 'Inter',
  );

  static TextStyle inter10Label = TextStyle(
    fontSize: 10.sp,
    color: Colors.white,
    fontFamily: 'Inter',
  );
}
