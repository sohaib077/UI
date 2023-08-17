import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/discover view/widgets/custom_challenges_linear_percent.dart';
import 'package:ui/habit tracker/views/discover view/widgets/discover_challenges_avatars.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/time_icon.dart';

import '../../../../core/styles.dart';

class DiscoverChallengesListViewItem extends StatelessWidget {
  const DiscoverChallengesListViewItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    const List<Map<String, dynamic>> challenges = [
      {
        "title": 'Best Runners! 🏃🏻‍♂️',
        "subTitle": '5 days 13 hours left',
        "percent": .3,
        "avatars": 2
      },
      {
        "title": 'Best Bikers! 🚴🏻‍',
        "subTitle": '2 days 11 hours left',
        "percent": .6,
        "avatars": 1
      },
    ];
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        width: 200,
        height: 120,
        decoration: customGradientDecoration(),
        padding: const EdgeInsets.symmetric(
            horizontal: kNormPadding - 3, vertical: kMinPadding - 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TimeIcon(),
            const SizedBox(height: 3),
            Text(challenges[index]["title"],
                style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 3),
            Text(
              challenges[index]["subTitle"],
              style: Styles.cardSubtitleTextStyle,
            ),
            const SizedBox(height: 8),
            CustomChallengesLinearPercent(
                percent: challenges[index]["percent"]),
            const SizedBox(height: 6),
            DiscoverChallengesAvatars(avatars: challenges[index]["avatars"]),
          ],
        ),
      ),
    );
  }
}

BoxDecoration customGradientDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(kMaxRadius),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        kPurple1,
        kBlue1,
      ],
    ),
  );
}
