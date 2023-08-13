import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/constants.dart';
import '../../../../core/styles.dart';

class DailyGoalsCard extends StatefulWidget {
  const DailyGoalsCard({
    super.key,
    required this.percent,
  });

  final double percent;

  @override
  State<DailyGoalsCard> createState() => _DailyGoalsCardState();
}

class _DailyGoalsCardState extends State<DailyGoalsCard>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: animation,
      child: GestureDetector(
        onTap: (){
          controller.forward();
        },
        child: Container(
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
              percent: widget.percent,
              circularStrokeCap: CircularStrokeCap.round,
              animation: true,
              center: Text(
                '%${(widget.percent * 100).toInt()}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            title: const Text(
              'Your daily goals almost done! 🔥',
              style: Styles.listTileTitle,
            ),
            subtitle: Text('${(widget.percent * 4).toInt()} of 4 completed',
                style: Styles.listTileSubTitle),
            dense: true,
            visualDensity: const VisualDensity(vertical: -1),
          ),
        ),
      ),
    );
  }
}
