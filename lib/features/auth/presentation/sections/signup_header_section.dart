import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';
import 'package:gymumity/core/theme/app_text_style.dart';
import 'package:gymumity/core/presentation/view/widgets/app_gradient_text.dart';

class SignupHeaderSection extends StatelessWidget {
  const SignupHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'NEW RECRUIT PHASE',
          style: AppTextStyle.inter10Label.copyWith(color: AppColors.primaryRedGym),
        ).animate().fadeIn(duration: 600.ms).slideX(begin: -0.1, end: 0),
        SizedBox(height: 8.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CREATE',
              style: AppTextStyle.lexend48.copyWith(height: 1.1),
            ),
            AppGradientText(
              'ACCOUNT',
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withValues(alpha: 0.5)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              style: AppTextStyle.lexend48.copyWith(height: 1.1),
            ),
          ],
        ).animate().fadeIn(delay: 200.ms, duration: 600.ms).slideY(begin: 0.1, end: 0),
        SizedBox(height: 12.h),
        Text(
          'JOIN THE HIGH-OCTANE ARENA WHERE\nCHAMPIONS ARE FORGED. START YOUR\nLEGACY TODAY.',
          style: AppTextStyle.inter10Label.copyWith(
            color: Colors.white.withValues(alpha: 0.6),
            height: 1.6,
            letterSpacing: 1.2,
          ),
        ).animate().fadeIn(delay: 400.ms, duration: 600.ms),
      ],
    );
  }
}
