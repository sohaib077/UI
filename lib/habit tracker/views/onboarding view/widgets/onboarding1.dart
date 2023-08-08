import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/onboarding3.dart';

import '../../../../core/assets_data.dart';
import 'custom2_texts_column.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Positioned(
          left: 30,
          top: 0,
          child: SizedBox(
            height: height * .45,
            width: height * .45,
            child: Image.asset(AssetsData.onboarding1),
          ),
        ),
        Positioned(
          left: 40,
          top: 20,
          child: SizedBox(
            height: height * .1,
            width: height * .1,
            child: SvgPicture.asset(AssetsData.dots1),
          ),
        ),
        Positioned(
          left: 0,
          top: height * .45,
          child: Custom2TextsColumn(
            height: height,
            headline: 'Create \nGood Habits',
            text:
                "Change your life by slowly adding new healty habits\nand sticking to them.",
          ),
        ),
      ],
    );
  }
}
