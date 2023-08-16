import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/assets_data.dart';

import '../../../../core/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onTap,
    this.isNotification = false,
    this.iconColor,
    this.padding,
  });

  final String icon;
  final Color? iconColor;
  final void Function()? onTap;
  final bool isNotification;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: kBlack10),
        borderRadius: BorderRadius.circular(kMaxRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(kMaxRadius),
          onTap: onTap ?? () {},
          child: Stack(
            children: [
              SvgPicture.asset(icon, color: iconColor),
              if (isNotification)
                Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(AssetsData.redDotIcon),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
