import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/back_arrow_icon_button.dart';

import '../../../../core/styles.dart';

class LeaderboardTitleRow extends StatelessWidget {
  const LeaderboardTitleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BackArrowIconButton(),
        const SizedBox(width: 8),
        Text("Leaderboard", style: Styles.appBarTextStyle),
      ],
    );
  }
}
