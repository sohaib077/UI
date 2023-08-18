import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/achievement_all_habits_row.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/all_habits_custom_row.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_container.dart';

class AllHabitsCustomCard extends StatelessWidget {
  const AllHabitsCustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        margin: 0,
        padding: const EdgeInsets.all(kNormPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AchievementAllHabitsRow(),
            SizedBox(height: 10),
            AllHabitsCustomRow(
              title1: "SUCCESS RATE",
              subTitle1: "%98",
              color: kGreen100,
              title2: "COMPLETED",
              subTitle2: "244",
            ),
            SizedBox(height: 4),
            AllHabitsCustomRow(
              title1: "POINTS EARNED",
              subTitle1: "%322",
              title2: "BEST STREAK DAY",
              subTitle2: "22",
              flag: true,
            ),
            SizedBox(height: 4),
            AllHabitsCustomRow(
              title1: "SKIPPED",
              subTitle1: "4",
              title2: "FAILED",
              subTitle2: "2",
              color2: kRed100,
            ),
          ],
        ));
  }
}
