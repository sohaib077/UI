import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/profile view/ widgets/custom_sliding_animation.dart';

import '../../../../core/constants.dart';
import '../../../../core/styles.dart';
import '../../home view/widgets/custom_icon_button.dart';
import '../../onboarding view/widgets/custom_container.dart';

class ActivityListViewItem extends StatefulWidget {
  const ActivityListViewItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.rotate,
    this.color,
    required this.index,
  });

  final String title;
  final String subTitle;
  final String icon;
  final bool? rotate;
  final Color? color;
  final int index;

  @override
  State<ActivityListViewItem> createState() => _ActivityListViewItemState();
}

class _ActivityListViewItemState extends State<ActivityListViewItem>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animation = Tween<Offset>(
      begin: Offset(
          0,
          (widget.index == 0)
              ? widget.index.toDouble() + .5
              : widget.index.toDouble()),
      end: Offset.zero,
    ).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return SlideTransition(
          position: animation,
          child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: CustomContainer(
              margin: 0,
              padding: const EdgeInsets.all(kNormPadding - 2),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title, style: Styles.mediumWeightTextStyle),
                      const SizedBox(height: 3),
                      Text(widget.subTitle, style: Styles.bottomSheetSubTitle),
                    ],
                  ),
                  const Spacer(),
                  Transform.rotate(
                      angle: widget.rotate != null ? pi : 0,
                      child: CustomIconButton(
                        icon: widget.icon,
                        iconColor: widget.color,
                      )),
                ],
              )),
      ),
        );
      },
    );
  }
}
