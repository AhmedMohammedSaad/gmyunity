import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingCTAButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isPrimary;
  final IconData? icon;

  const OnboardingCTAButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isPrimary = true,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: isPrimary ? null : const Color(0xFF1F1F1F),
          gradient: isPrimary
              ? const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 28, 2, 2),
                    Color.fromARGB(255, 28, 2, 2),
                    Color.fromARGB(255, 190, 17, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            if (icon != null)
              Positioned(
                right: 20.w,
                top: 0,
                bottom: 0,
                child: Icon(icon, color: Colors.white, size: 20.sp),
              ),
          ],
        ),
      ),
    );
  }
}
