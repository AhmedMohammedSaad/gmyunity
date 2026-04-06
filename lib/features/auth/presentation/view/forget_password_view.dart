import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';
import 'package:gymumity/core/theme/app_text_style.dart';
import 'package:gymumity/core/presentation/view/widgets/app_default_text_form_field.dart';
import 'package:gymumity/core/presentation/view/widgets/main_button.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background blur
          Positioned(
            top: -50.h,
            left: -50.w,
            child: Container(
              width: 250.w,
              height: 250.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFAE1709).withOpacity(0.2),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  SizedBox(height: 40.h),
                  Text(
                    'FORGOT',
                    style: AppTextStyle.lexend48.copyWith(height: 1.1),
                  ),
                  Text(
                    'PASSWORD?',
                    style: AppTextStyle.lexend48.copyWith(
                      color: AppColors.primaryRedGym,
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'ENTER YOUR EMAIL ADDRESS TO RECEIVE\nA PASSWORD RESET LINK.',
                    style: AppTextStyle.inter10Label.copyWith(
                      color: Colors.white.withOpacity(0.6),
                      height: 1.6,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 48.h),
                  AppDefaultTextFormField(
                    controller: _emailController,
                    validate: (v) => v!.isEmpty ? 'Email is required' : null,
                    type: TextInputType.emailAddress,
                    hint: 'EMAIL ADDRESS',
                    prefixIcon: PrefixIconData.icon(Icons.email_outlined, color: Colors.white.withOpacity(0.5), size: 20.sp),
                    borderRadius: 4.r,
                    borderColor: AppColors.authBorderGray,
                  ),
                  SizedBox(height: 32.h),
                  AppDefaultButton(
                    buttonText: 'SEND RESET LINK',
                    ontap: () {
                      // TODO: Trigger Reset
                    },
                    borderRadius: 4.r,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeIn();
  }
}
