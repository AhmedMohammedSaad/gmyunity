import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';
import 'package:gymumity/core/theme/app_text_style.dart';

class AppDefaultButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback ontap;
  final double? width;
  final double? height;
  final double? borderRadius;
  final TextStyle? textStyle;

  const AppDefaultButton({
    super.key,
    required this.buttonText,
    required this.ontap,
    this.width,
    this.height,
    this.borderRadius,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 50.h,
        decoration: BoxDecoration(
          color: AppColors.primaryRedGym,
          borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
        ),
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: textStyle ??
              AppTextStyle.inter10Label.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
        ),
      ),
    );
  }
}
