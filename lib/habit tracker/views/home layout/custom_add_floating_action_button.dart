// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/custom_bottom_sheet.dart';

import '../../../core/assets_data.dart';

class CustomAddFloatingActionButton extends StatefulWidget {
  const CustomAddFloatingActionButton({
    super.key,
  });

  @override
  State<CustomAddFloatingActionButton> createState() =>
      _CustomAddFloatingActionButtonState();
}

class _CustomAddFloatingActionButtonState
    extends State<CustomAddFloatingActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animation =
        Tween<double>(begin: 0, end: 2 * pi - pi / 4).animate(controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kNormPadding - 5),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.small(
          hoverElevation: 0,
          backgroundColor: Colors.transparent,
          splashColor: Colors.transparent,
          elevation: 0,
          highlightElevation: 0,
          onPressed: () {},
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
                    onPressed: () async {
                      controller.forward().then((value) {
                        customShowDialog(context, height);
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

  Future<dynamic> customShowDialog(BuildContext context, double height) {
    return showDialog(
      barrierColor: kBlack100.withOpacity(.65),
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        alignment: Alignment.bottomCenter,
        insetPadding: EdgeInsets.only(top: height * .6, bottom: height * .0),
        child: CustomBottomSheet(
          controller: controller,
          animation: animation,
        ),
      ),
    );
  }
}
