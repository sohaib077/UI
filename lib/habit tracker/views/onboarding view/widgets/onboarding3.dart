import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom2_texts_column.dart';

import '../../../../core/assets_data.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          left: 30,
          top: 10,
          child: SizedBox(
            height: height * .45,
            width: height * .45,
            child: Image.asset(AssetsData.onboarding3),
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
            headline: 'Stay Together\nand Strong',
            text:
                "Find friends to discuss common topics. Complete\nchallenges together.",
          ),
        ),
      ],
    );
  }
}
