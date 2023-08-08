import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/constants.dart';

class CustomCircularPercent extends StatelessWidget {
  const CustomCircularPercent({
    super.key,
    required this.percent,
    required this.text,
  });

  final double percent;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 15,
      lineWidth: 3.0,
      percent: percent,
      progressColor: kBlue100,
      backgroundColor: kGrey1,
      circularStrokeCap: CircularStrokeCap.round,
      animation: true,
      center: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
