import 'package:flutter/material.dart';
import 'package:gymumity/core/routing/routes.dart';
import 'package:gymumity/features/auth/presentation/view/login_view.dart';
import 'package:gymumity/features/auth/presentation/view/signup_view.dart';
import 'package:gymumity/features/auth/presentation/view/forget_password_view.dart';
import 'package:gymumity/features/onboarding/presentation/view/onboarding_view.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.signup:
        return MaterialPageRoute(builder: (_) => const SignupView());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
