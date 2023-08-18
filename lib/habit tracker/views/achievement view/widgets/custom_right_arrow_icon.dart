import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_container.dart';

class CustomRightArrowIcon extends StatelessWidget {
  const CustomRightArrowIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        margin: 0,
        padding: const EdgeInsets.all(8),
        child: SvgPicture.asset(AssetsData.rightArrowIcon));
  }
}
