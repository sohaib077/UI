import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/leaderboard_title_row.dart';
import 'package:ui/habit%20tracker/views/discover%20view/widgets/custom_app_bar.dart';

import 'achievement_toggle_tabs.dart';

class LeaderboardAppBar extends StatelessWidget {
  const LeaderboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      child: Column(
        children: const [
          LeaderboardTitleRow(),
          SizedBox(height: 12),
          AchievementToggleTabs(),
          // SizedBox(height: 8),
        ],
      ),
    );
  }
}
