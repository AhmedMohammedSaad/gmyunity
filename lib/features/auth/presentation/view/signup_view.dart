import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:gymumity/features/auth/presentation/sections/signup_header_section.dart';
import 'package:gymumity/features/auth/presentation/sections/signup_form_section.dart';
import 'package:gymumity/features/auth/presentation/sections/signup_actions_section.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: Stack(
          children: [
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
            SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60.h),
                    const SignupHeaderSection(),
                    SizedBox(height: 48.h),
                    const SignupFormSection(),
                    SizedBox(height: 32.h),
                    const SignupActionsSection(),
                    SizedBox(height: 24.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
