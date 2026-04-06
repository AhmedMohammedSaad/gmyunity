import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardingHeroSection extends StatelessWidget {
  const OnboardingHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Hero Image
        Positioned.fill(
          child: Image.asset(
            'assets/images/onboarding/5248de990ac80133a0ddbc2e3e2c20fbc5cb18d5.png',
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ).animate().fadeIn(duration: 1200.ms).scale(
                begin: const Offset(1.1, 1.1),
                end: const Offset(1.0, 1.0),
                duration: 2000.ms,
                curve: Curves.easeOut,
              ),
        ),
        // Black Overlay for consistency
        Positioned.fill(
          child: Container(
            color: Colors.black.withValues(alpha: 0.4),
          ),
        ),
        // Vertical Gradient to blend with bottom content
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.2),
                  Colors.black.withValues(alpha: 0.8),
                  Colors.black,
                ],
                stops: const [0.0, 0.7, 1.0],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
