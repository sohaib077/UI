import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/constants.dart';
import '../../../../core/styles.dart';

class DailyGoalsCard extends StatelessWidget {
  const DailyGoalsCard({
    super.key,
    required this.percent,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kMaxRadius),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            kPurple1,
            kBlue1,
          ],
        ),
      ),
      child: ListTile(
        leading: CircularPercentIndicator(
          radius: 19,
          progressColor: Colors.white,
          backgroundColor: kBlue40,
          lineWidth: 3,
          percent: percent,
          circularStrokeCap: CircularStrokeCap.round,
          animation: true,
          center: Text(
            '%${(percent * 100).toInt()}',
            style: const TextStyle(color: Colors.white, fontSize: 12 ),
          ),
        ),
        title: const Text(
          'Your daily goals almost done! 🔥',
          style: Styles.listTileTitle,
        ),
        subtitle: Text('${(percent*4).toInt()} of 4 completed',
            style: Styles.listTileSubTitle),
        dense: true,
        visualDensity: const VisualDensity(vertical: -1),
      ),
    );
  }
}
