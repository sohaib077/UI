import 'package:flutter/material.dart';
import 'package:ui/core/styles.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/custom_orange_container.dart';

class AllHabitsCustomColumn extends StatelessWidget {
  const AllHabitsCustomColumn({
    super.key,
    required this.title,
    required this.subTitle,
    this.color,
    this.flag,
  });

  final String title;
  final String subTitle;
  final Color? color;
  final bool? flag;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Styles.subLabelTextStyle),
          if (flag == null)
            Text(subTitle, style: Styles.titleTextStyle.copyWith(color: color)),
          if (flag != null) const CustomOrangeContainer(text: "322"),
        ],
      ),
    );
  }
}
