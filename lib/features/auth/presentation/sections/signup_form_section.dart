import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';
import 'package:gymumity/core/presentation/view/widgets/app_default_text_form_field.dart';

class SignupFormSection extends StatefulWidget {
  const SignupFormSection({super.key});

  @override
  State<SignupFormSection> createState() => _SignupFormSectionState();
}

class _SignupFormSectionState extends State<SignupFormSection> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppDefaultTextFormField(
          controller: _nameController,
          type: TextInputType.name,
          hint: 'FULL NAME',
          prefixIcon: PrefixIconData.icon(Icons.person_outline, color: Colors.white.withValues(alpha: 0.5), size: 20.sp),
          validate: (v) => v!.isEmpty ? 'Name is required' : null,
          borderRadius: 4.r,
          borderColor: AppColors.authBorderGray,
        ),
        SizedBox(height: 16.h),
        AppDefaultTextFormField(
          controller: _emailController,
          type: TextInputType.emailAddress,
          hint: 'EMAIL ADDRESS',
          prefixIcon: PrefixIconData.icon(Icons.email_outlined, color: Colors.white.withValues(alpha: 0.5), size: 20.sp),
          validate: (v) => v!.isEmpty ? 'Email is required' : null,
          borderRadius: 4.r,
          borderColor: AppColors.authBorderGray,
        ),
        SizedBox(height: 16.h),
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
        SizedBox(height: 16.h),
        AppDefaultTextFormField(
          controller: _confirmPasswordController,
          type: TextInputType.visiblePassword,
          hint: 'CONFIRM PASSWORD',
          obscureText: true,
          prefixIcon: PrefixIconData.icon(Icons.lock_outline, color: Colors.white.withValues(alpha: 0.5), size: 20.sp),
          validate: (v) => v!.isEmpty ? 'Confirm Password is required' : null,
          borderRadius: 4.r,
          borderColor: AppColors.authBorderGray,
        ),
      ],
    );
  }
}
