import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/core/constants.dart';

import '../../../../core/assets_data.dart';

class CustomBottomSheetFloatingCloseButton extends StatelessWidget {
  const CustomBottomSheetFloatingCloseButton({
    super.key,
    required this.controller,
    required this.animation,
  });

  final AnimationController controller;
  final Animation<double> animation;

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kNormPadding - 5 ),
      child: FloatingActionButton.small(
        hoverElevation: 0,
        backgroundColor: Colors.transparent,
        splashColor: Colors.transparent,
        elevation: 0,
        highlightElevation: 0,
        onPressed: () {},
        child: Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                kPurple1,
                kBlue1,
              ],
            ),
          ),
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateZ(animation.value),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        kPurple1,
                        kBlue1,
                      ],
                    ),
                  ),
                  child: IconButton(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      controller.reverse().then((value) {
                        Navigator.pop(context);
                      });
                    },
                    icon: SvgPicture.asset(AssetsData.addIcon),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
