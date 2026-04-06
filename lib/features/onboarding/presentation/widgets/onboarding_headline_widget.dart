import 'package:flutter/material.dart';
import 'package:gymumity/core/theme/app_text_style.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardingHeadlineWidget extends StatelessWidget {
  const OnboardingHeadlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
              'UNLEASH\nYOUR',
              style: AppTextStyle.lexend48.copyWith(fontWeight: .w400),
            )
            .animate()
            .fadeIn(delay: 200.ms, duration: 800.ms)
            .slideX(begin: -0.1, end: 0),
        Text(
              'INNER BEAST',
              style: AppTextStyle.lexend60.copyWith(
                color: const Color(0xFFAE1709),
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            )
            .animate()
            .fadeIn(delay: 500.ms, duration: 800.ms)
            .slideX(begin: -0.1, end: 0),
      ],
    );
  }
}
