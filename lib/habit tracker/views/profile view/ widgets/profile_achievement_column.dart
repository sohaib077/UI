import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/profile view/ widgets/achievements_list_view_item.dart';

import '../../../../core/styles.dart';

class ProfileAchievementColumn extends StatelessWidget {
  const ProfileAchievementColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 3),
        const Text("2 Achievements", style: Styles.mediumWeightTextStyle),
        const SizedBox(height: 5),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: achievementsList.length,
          itemBuilder: (context, index) {
            return AchievementsListViewItem(
              color: achievementsList[index]["color"],
              icon: achievementsList[index]["icon"],
              title: achievementsList[index]["title"],
              subTitle: achievementsList[index]["subTitle"],
              index: index,
            );
          },
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
