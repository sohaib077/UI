import 'package:flutter/material.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/core/shared_methods.dart';
import 'package:ui/core/styles.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/achievement_app_bar_row.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/achievement_toggle_tabs.dart';
import 'package:ui/habit%20tracker/views/achievement%20view/leaderboard%20view.dart';
import 'package:ui/habit%20tracker/views/discover%20view/widgets/custom_app_bar.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/custom_icon_button.dart';

class AchievementAppBar extends StatelessWidget {
  const AchievementAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Activity',
                style: Styles.appBarTextStyle,
              ),
              const Spacer(),
              CustomIconButton(
                icon: AssetsData.users3Icon,
                onTap: () {
                  navigateTo(context, const LeaderboardView());
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          const AchievementToggleTabs(),
          const SizedBox(height: 12),
          const AchievementAppBarRow(),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
