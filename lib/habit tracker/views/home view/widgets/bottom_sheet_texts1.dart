import 'package:flutter/material.dart';
import 'package:ui/core/styles.dart';

class BottomSheetTexts1 extends StatelessWidget {
  const BottomSheetTexts1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Add Mood",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 2),
        Text(
          "How’re you feeling?",
          style: Styles.subTitleTextStyle.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
