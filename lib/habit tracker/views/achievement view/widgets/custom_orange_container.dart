import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/styles.dart';

import '../../../../core/assets_data.dart';

class CustomOrangeContainer extends StatelessWidget {
  const CustomOrangeContainer({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      // width: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kMinRadius),
          color: const Color(0xffFFF3DA)),
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(AssetsData.medalIcon),
          Text(text,
              style: Styles.titleTextStyle
                  .copyWith(color: const Color(0xffFEA800), fontSize: 14)),
        ],
      ),
    );
  }
}
