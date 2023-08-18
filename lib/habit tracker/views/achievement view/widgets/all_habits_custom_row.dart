import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/all_habits_custom_column.dart';

class AllHabitsCustomRow extends StatelessWidget {
  const AllHabitsCustomRow({
    super.key,
    required this.title1,
    required this.subTitle1,
    required this.title2,
    required this.subTitle2,
    this.color,
    this.color2,
    this.flag,
  });

  final String title1;
  final String subTitle1;
  final String title2;
  final String subTitle2;
  final Color? color;
  final Color? color2;
  final bool? flag;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AllHabitsCustomColumn(
          title: title1,
          subTitle: subTitle1,
          color: color,
          flag: flag,
        ),
        const Spacer(),
        AllHabitsCustomColumn(
          title: title2,
          subTitle: subTitle2,
          color: color2,
        ),
        const Spacer(),
      ],
    );
  }
}
