import 'package:flutter/material.dart';
import 'package:ui/core/styles.dart';

import '../../../../core/constants.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key, required this.num, required this.text,
  });

  final String num;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          num,
          style: Styles.appBarTextStyle.copyWith(color: kBlue100),
        ),
        Text(
          text,
          style: const TextStyle(color: kBlue100, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
