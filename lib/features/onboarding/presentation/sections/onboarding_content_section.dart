import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_text_style.dart';
import 'package:gymumity/core/routing/routes.dart';
import '../widgets/onboarding_branding_widget.dart';
import '../widgets/onboarding_headline_widget.dart';
import '../widgets/onboarding_cta_button.dart';

class OnboardingContentSection extends StatelessWidget {
  const OnboardingContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const OnboardingBrandingWidget(),
          SizedBox(height: 20.h),
          const OnboardingHeadlineWidget(),
          SizedBox(height: 10.h),
          Text(
            'Connect, Train, and Conquer with the\nCommunity. The ultimate arena for\nthose who refuse to settle.',
            style: AppTextStyle.inter18Gray,
          ).animate().fadeIn(delay: 800.ms, duration: 800.ms),
          SizedBox(height: 48.h),
          OnboardingCTAButton(
            text: 'GET STARTED',
            icon: Icons.arrow_forward,
            onTap: () {
              Navigator.pushNamed(context, Routes.signup);
            },
          ).animate().fadeIn(delay: 1100.ms).slideY(begin: 0.1, end: 0),
          SizedBox(height: 16.h),
          OnboardingCTAButton(
            text: 'SIGN IN',
            isPrimary: false,
            onTap: () {
              Navigator.pushNamed(context, Routes.login);
            },
          ).animate().fadeIn(delay: 1300.ms).slideY(begin: 0.1, end: 0),
          SizedBox(height: 40.h), // Safe area bottom padding
        ],
      ),
    );
  }
}
