import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/custom_eyes_icon.dart';

import '../../../../core/styles.dart';
import 'custom_right_arrow_icon.dart';

class AchievementAllHabitsRow extends StatelessWidget {
  const AchievementAllHabitsRow({
    super.key,
    this.icon,
    this.title,
    this.subTitle,
  });

  final String? icon;
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomEyesIcon(icon: icon),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? 'All Habits',
              style: Styles.mediumWeightTextStyle,
            ),
            Text(
              subTitle ?? 'Summary',
              style: Styles.bottomSheetSubTitle,
            ),
          ],
        ),
        if (title == null) const Spacer(),
        if (title == null)
          Transform.rotate(
            angle: pi / 2,
            child: const CustomRightArrowIcon(),
          ),
      ],
    );
  }
}
