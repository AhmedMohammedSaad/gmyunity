import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';
import 'package:gymumity/core/theme/app_text_style.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardingBrandingWidget extends StatelessWidget {
  const OnboardingBrandingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.flash_on_rounded,
          color: AppColors.primaryRedGym,
          size: 28.sp,
        ),
        SizedBox(width: 5.w),
        Text(
          'GYMUNITY',
          style: AppTextStyle.lexend24Red.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 24.sp,
            letterSpacing: 1.2,
          ),
        ),
      ],
    ).animate().fadeIn(duration: 600.ms).slideY(begin: -0.2, end: 0);
  }
}
