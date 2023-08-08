import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/email_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.child, this.width,
  });

  final Widget child;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width ?? double.infinity,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kButtonRadius),
      ),
      onPressed: () {},
      child: child,
    );
  }
}
