import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/habit tracker/views/splash view/widgets/back_drop1.dart';
import 'package:ui/habit tracker/views/splash view/widgets/background_container.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        BackgroundContainer(height: height, width: width),
        BackDrop1(height: height),
        Center(child: SvgPicture.asset(AssetsData.circle1)),
        Center(child: SvgPicture.asset(AssetsData.logo1)),
      ],
    );
  }
}
