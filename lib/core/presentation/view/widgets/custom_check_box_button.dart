import 'package:flutter/material.dart';

class CustomCheckboxOption extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;
  final TextStyle? textStyle;
  final Color? activeColor;

  const CustomCheckboxOption({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.textStyle,
    this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: activeColor,
        ),
        Text(label, style: textStyle),
      ],
    );
  }
}
