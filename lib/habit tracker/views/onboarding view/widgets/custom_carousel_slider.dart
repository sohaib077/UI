import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/onboarding1.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/onboarding2.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/cubit/onboarding_cubit.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/onboarding3.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        Onboarding1(),
        Onboarding2(),
        Onboarding3(),
      ],
      options: CarouselOptions(
        height: height * 0.65,
        enlargeCenterPage: true,
        // autoPlay: true,
        // aspectRatio: 16 / 9,
        // autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          OnboardingCubit.get(context).changeIndex(index);
        },
      ),
    );
  }
}
