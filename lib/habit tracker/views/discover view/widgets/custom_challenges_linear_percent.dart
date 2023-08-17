import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui/core/constants.dart';

class CustomChallengesLinearPercent extends StatelessWidget {
  const CustomChallengesLinearPercent({
    super.key,
    required this.percent,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      padding: EdgeInsets.zero,
      lineHeight: 4,
      backgroundColor: kBlue40,
      barRadius: const Radius.circular(kMinRadius),
      percent: percent,
      progressColor: Colors.white,
      animation: true,
    );
  }
}
