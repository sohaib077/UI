import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

import '../../../../core/styles.dart';
import '../../onboarding view/widgets/custom_container.dart';

class AchievementsListViewItem extends StatefulWidget {
  const AchievementsListViewItem({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.index,
  });

  final Color color;
  final String icon;
  final String title;
  final String subTitle;
  final int index;

  @override
  State<AchievementsListViewItem> createState() =>
      _AchievementsListViewItemState();
}

class _AchievementsListViewItemState extends State<AchievementsListViewItem>
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
            end: Offset.zero)
        .animate(controller);
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
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: widget.color,
                      child: Text(
                        widget.icon,
                        style: Styles.iconTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.title, style: Styles.mediumWeightTextStyle),
                        const SizedBox(height: 3),
                        Text(widget.subTitle,
                            style: Styles.bottomSheetSubTitle),
                      ],
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }
}
