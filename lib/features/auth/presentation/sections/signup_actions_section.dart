import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';
import 'package:gymumity/core/theme/app_text_style.dart';
import 'package:gymumity/core/presentation/view/widgets/main_button.dart';
import 'package:gymumity/core/presentation/view/widgets/custom_check_box_button.dart';
import 'package:gymumity/core/routing/routes.dart';

class SignupActionsSection extends StatefulWidget {
  const SignupActionsSection({super.key});

  @override
  State<SignupActionsSection> createState() => _SignupActionsSectionState();
}

class _SignupActionsSectionState extends State<SignupActionsSection> {
  bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCheckboxOption(
          value: _agreeToTerms,
          label: 'I AGREE TO THE TERMS AND CONDITIONS',
          activeColor: AppColors.primaryRedGym,
          textStyle: AppTextStyle.inter10Label.copyWith(
            color: Colors.white.withValues(alpha: 0.5),
            fontSize: 10.sp,
          ),
          onChanged: (v) => setState(() => _agreeToTerms = v ?? false),
        ),
        SizedBox(height: 24.h),
        AppDefaultButton(
          buttonText: 'SIGN UP',
          ontap: () {
            // TODO: Trigger Signup
          },
          borderRadius: 4.r,
          width: double.infinity,
        ),
        SizedBox(height: 32.h),
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, Routes.login),
          child: RichText(
            text: TextSpan(
              style: AppTextStyle.inter10Label.copyWith(letterSpacing: 1),
              children: [
                const TextSpan(text: 'ALREADY HAVE AN ACCOUNT? '),
                TextSpan(
                  text: 'LOGIN',
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
