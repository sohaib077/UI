import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/styles.dart';

class CustomSlidableColumn extends StatelessWidget {
  const CustomSlidableColumn({
    super.key,
    required this.icon,
    required this.label,
  });

  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 3),
        SvgPicture.asset(icon),
        const Spacer(),
        Text(
          label,
          style: Styles.subTitleTextStyle.copyWith(fontSize: 10),
        ),
        const Spacer(flex: 3),
      ],
    );
  }
}
