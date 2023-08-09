import 'package:flutter/material.dart';
import 'package:ui/core/styles.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: Styles.labelTextStyle,
    );
  }
}
