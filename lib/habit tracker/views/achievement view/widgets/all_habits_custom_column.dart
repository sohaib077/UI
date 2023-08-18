import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/styles.dart';

import '../../../../core/assets_data.dart';

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
          if (flag != null)
            Container(
              height: 24,
              width: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kMinRadius),
                  color: const Color(0xffFFF3DA)),
              padding: const EdgeInsets.all(2),
              child: Row(
                children: [
                  SvgPicture.asset(AssetsData.medalIcon),
                  Text("322",
                      style: Styles.titleTextStyle.copyWith(color: const Color(0xffFEA800) , fontSize: 14)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
