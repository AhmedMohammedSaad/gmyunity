import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';
import 'package:gymumity/core/theme/app_text_style.dart';
import 'package:gymumity/core/presentation/view/widgets/app_default_text_form_field.dart';
import 'package:gymumity/core/routing/routes.dart';

class LoginFormSection extends StatefulWidget {
  const LoginFormSection({super.key});

  @override
  State<LoginFormSection> createState() => _LoginFormSectionState();
}

class _LoginFormSectionState extends State<LoginFormSection> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppDefaultTextFormField(
          controller: _emailController,
          type: TextInputType.emailAddress,
          hint: 'EMAIL ADDRESS',
          prefixIcon: PrefixIconData.icon(Icons.email_outlined, color: Colors.white.withValues(alpha: 0.5), size: 20.sp),
          validate: (v) => v!.isEmpty ? 'Email is required' : null,
          borderRadius: 4.r,
          borderColor: AppColors.authBorderGray,
        ),
        SizedBox(height: 20.h),
        AppDefaultTextFormField(
          controller: _passwordController,
          type: TextInputType.visiblePassword,
          hint: 'PASSWORD',
          obscureText: true,
          prefixIcon: PrefixIconData.icon(Icons.lock_outline, color: Colors.white.withValues(alpha: 0.5), size: 20.sp),
          validate: (v) => v!.isEmpty ? 'Password is required' : null,
          borderRadius: 4.r,
          borderColor: AppColors.authBorderGray,
        ),
        SizedBox(height: 12.h),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, Routes.forgetPassword),
          child: Text(
            'FORGOT PASSWORD?',
            style: AppTextStyle.inter10Label.copyWith(
              color: AppColors.primaryRedGym,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
