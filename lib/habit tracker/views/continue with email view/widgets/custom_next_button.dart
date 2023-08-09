import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_button.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomButton(
      color: kBlue100,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: kNormPadding),
        child: Text(
          'Next',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
