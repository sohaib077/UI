import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom_button.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom_row.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CustomButton(
          width: 0,
          child: CustomRow(text: "Apple", icon: Icons.apple_rounded),
        ),
        CustomButton(
          width: 0,
          child: CustomRow(
            text: "Google",
            icon: FontAwesomeIcons.google,
            iconColor: Colors.redAccent,
          ),
        ),
        CustomButton(
          width: 0,
          child: CustomRow(
            text: "Facebook",
            icon: FontAwesomeIcons.facebook,
            iconColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
