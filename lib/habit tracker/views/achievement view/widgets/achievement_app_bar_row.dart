import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/styles.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/custom_right_arrow_icon.dart';

class AchievementAppBarRow extends StatelessWidget {
  const AchievementAppBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "This week",
              style: Styles.mediumWeightTextStyle,
            ),
            const SizedBox(height: 2),
            Text(
              "May 28 - Jun 3",
              style: Styles.listTileSubTitle.copyWith(color: kBlack60),
            ),
          ],
        ),
        const Spacer(),
        Transform.scale(scale: -1, child: const CustomRightArrowIcon()),
        SizedBox(width: 5),
        const CustomRightArrowIcon(),
      ],
    );
  }
}
