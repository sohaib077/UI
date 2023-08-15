import 'package:flutter/material.dart';
import 'package:ui/core/styles.dart';

class BottomSheetTexts extends StatelessWidget {
  const BottomSheetTexts({
    super.key,
    this.title,
    this.subTitle,
  });

  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "Add Mood",
          style: Styles.mediumWeightTextStyle,
        ),
        const SizedBox(height: 2),
        Text(
          subTitle ?? "How’re you feeling?",
          style: Styles.bottomSheetSubTitle,
        ),
      ],
    );
  }
}
