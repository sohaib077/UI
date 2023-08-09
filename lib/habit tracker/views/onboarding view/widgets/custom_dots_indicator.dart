import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/cubit/onboarding_cubit.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.centerLeft,
          child: DotsIndicator(
            dotsCount: 3,
            position: OnboardingCubit.get(context).currentIndex ,
            decorator: DotsDecorator(
              color: const Color(0xff888EFF),
              activeColor: Colors.white,
              size: const Size.fromRadius(4),
              activeSize: const Size(18.0, 9.0),
              activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        );
      },
    );
  }
}
