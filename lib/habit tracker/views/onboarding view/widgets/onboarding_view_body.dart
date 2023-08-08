import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/continuing_text.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom_button.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom_carousel_slider.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom_dots_indicator.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/row_buttons.dart';
import 'package:ui/habit%20tracker/views/splash%20view/widgets/background_container.dart';

import 'email_text.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        BackgroundContainer(height: height, width: width),
        Center(child: SvgPicture.asset(AssetsData.circle1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMaxPadding),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  child: CustomCarouselSlider(height: height),
                ),
                const Spacer(flex: 1),
                const CustomDotsIndicator(),
                const Spacer(flex: 2),
                const CustomButton(child: EmailRow()),
                const SizedBox(height: 10),
                const RowButtons(),
                const SizedBox(height: 10),
                const ContinuingText(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        )
      ],
    );
  }
}
