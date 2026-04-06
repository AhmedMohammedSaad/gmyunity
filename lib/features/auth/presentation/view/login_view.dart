import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:gymumity/features/auth/presentation/sections/login_hero_section.dart';
import 'package:gymumity/features/auth/presentation/sections/login_form_section.dart';
import 'package:gymumity/features/auth/presentation/sections/login_actions_section.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(flex: 5, child: const LoginHeroSection()),
            Expanded(
              flex: 6,
              child: Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const LoginFormSection(),
                      SizedBox(height: 48.h),
                      const LoginActionsSection(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
