import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

import '../../../../core/styles.dart';

class CustomEyesIcon extends StatelessWidget {
  const CustomEyesIcon({
    super.key, this.icon,
  });
  final String ?icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kMinRadius),
        color: const Color(0xffF3F4F6),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 6),
      child: Text(icon ?? "👀", style: Styles.iconTextStyle.copyWith(fontSize: 18)),
    );
  }
}
