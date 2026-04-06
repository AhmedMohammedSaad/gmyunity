import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';
import 'package:gymumity/core/theme/app_text_style.dart';
import 'package:gymumity/core/presentation/view/widgets/main_button.dart';
import 'package:gymumity/core/routing/routes.dart';

class LoginActionsSection extends StatelessWidget {
  const LoginActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppDefaultButton(
          buttonText: 'LOGIN',
          ontap: () {
            // TODO: Trigger Login
          },
          borderRadius: 4.r,
          width: double.infinity,
        ),
        SizedBox(height: 32.h),
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, Routes.signup),
          child: RichText(
            text: TextSpan(
              style: AppTextStyle.inter10Label.copyWith(letterSpacing: 1),
              children: [
                const TextSpan(text: 'DON\'T HAVE AN ACCOUNT? '),
                TextSpan(
                  text: 'SIGN UP',
                  style: TextStyle(
                    color: AppColors.primaryRedGym,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
