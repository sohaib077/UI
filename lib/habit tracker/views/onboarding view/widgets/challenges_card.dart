import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/onboarding2_list_tile.dart';

class ChallengesCard extends StatelessWidget {
  const ChallengesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kMaxRadius),
      ),
      child: Column(
        children: [
          const Onboarding2ListTile(),
          LinearPercentIndicator(
            lineHeight: 4,
            backgroundColor: kGrey1,
            barRadius: const Radius.circular(kMinRadius),
            percent: 0.3,
            progressColor: kBlue100,
            animation: true,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
