import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';
import 'package:gymumity/core/theme/app_text_style.dart';

class LoginHeroSection extends StatelessWidget {
  const LoginHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Cinematic Background
        // Background blur/overlay
        Positioned(
          top: -100.h,
          right: -100.w,
          child: Container(
            width: 300.w,
            height: 300.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFAE1709).withValues(alpha: 0.3),
            ),
          ),
        ),
        // Dark Gradient Overlay
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.2),
                  Colors.black.withValues(alpha: 0.6),
                  Colors.black,
                ],
                stops: const [0.0, 0.4, 1.0],
              ),
            ),
          ),
        ),
        // Branding & Hero Text
        Positioned(
          bottom: 40.h,
          left: 24.w,
          right: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'GYMUNITY',
                style: AppTextStyle.lexend48.copyWith(
                  color: AppColors.primaryRedGym,
                  fontWeight: FontWeight.w900,
                  fontSize: 54.sp,
                  letterSpacing: -2,
                ),
              ).animate().fadeIn(delay: 500.ms).slideX(begin: -0.1, end: 0),
              SizedBox(height: 8.h),
              Text(
                'LEAVE NOTHING BEHIND.',
                style: AppTextStyle.lexend24Red.copyWith(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 16.sp,
                ),
              ).animate().fadeIn(delay: 700.ms).slideX(begin: -0.1, end: 0),
            ],
          ),
        ),
      ],
    );
  }
}
