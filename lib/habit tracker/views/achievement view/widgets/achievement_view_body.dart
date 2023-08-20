import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/achievement_app_bar.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/achievement_line_chart.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/all_habits_custom_card.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_container.dart';

import '../../home view/widgets/app_bar_separator.dart';
import 'achievement_all_habits_row.dart';

class AchievementViewBody extends StatelessWidget {
  const AchievementViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const AchievementAppBar(),
          const AppBarSeparator(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kMaxPadding),
            child: Column(
              children: [
                const AllHabitsCustomCard(),
                const SizedBox(height: 8),
                CustomContainer(
                  // height: 200,
                  margin: 0,
                  padding: const EdgeInsets.all(kNormPadding),
                  child: Column(
                    children: const [
                      AchievementAllHabitsRow(
                        icon: "📈",
                        title: "Habits",
                        subTitle: "Comparison by week",
                      ),
                      SizedBox(height: 10),
                      AchievementLineChart(),
                    ],
                  ),
                ),
                // const SizedBox(height: 8),
                // CustomContainer(
                //   // height: 200,
                //   margin: 0,
                //   padding: const EdgeInsets.all(kNormPadding),
                //   child: Column(
                //     children: const [
                //       AchievementAllHabitsRow(
                //         icon: "🙂",
                //         title: "Happy",
                //         subTitle: "Avg. Mood",
                //       ),
                //       SizedBox(height: 10),
                //       EmojisLineChart(),
                //     ],
                //   ),
                // ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
