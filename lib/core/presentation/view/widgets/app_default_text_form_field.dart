import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrefixIconData {
  final IconData icon;
  final Color? color;
  final double? size;
  PrefixIconData.icon(this.icon, {this.color, this.size});
}

class AppDefaultTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final String hint;
  final PrefixIconData? prefixIcon;
  final String? Function(String?)? validate;
  final double? borderRadius;
  final Color? borderColor;
  final bool obscureText;

  const AppDefaultTextFormField({
    super.key,
    required this.controller,
    required this.type,
    required this.hint,
    this.prefixIcon,
    this.validate,
    this.borderRadius,
    this.borderColor,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: obscureText,
      validator: validate,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5), fontSize: 14.sp),
        prefixIcon: prefixIcon != null 
          ? Icon(prefixIcon!.icon, color: prefixIcon!.color, size: prefixIcon!.size) 
          : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
          borderSide: BorderSide(color: borderColor ?? Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
          borderSide: BorderSide(color: borderColor ?? Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
          borderSide: BorderSide(color: borderColor ?? Colors.white),
        ),
      ),
    );
  }
}
