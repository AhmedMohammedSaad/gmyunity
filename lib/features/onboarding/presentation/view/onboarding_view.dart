import 'package:flutter/material.dart';
import '../sections/onboarding_hero_section.dart';
import '../sections/onboarding_content_section.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          OnboardingHeroSection(),
          SafeArea(
            child: OnboardingContentSection(),
          ),
        ],
      ),
    );
  }
}
