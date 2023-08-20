import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/styles.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/custom_rich_text.dart';
import 'package:ui/habit%20tracker/views/achievement%20view/widgets/custom_orange_container.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/constants.dart';

class LeaderboardNumberColumn extends StatefulWidget {
  const LeaderboardNumberColumn({
    super.key,
    required this.num,
    required this.text,
    required this.medals,
    required this.avatar,
    required this.name,
  });

  final String num;
  final String text;
  final String medals;
  final String avatar;
  final String name;

  @override
  State<LeaderboardNumberColumn> createState() =>
      _LeaderboardNumberColumnState();
}

class _LeaderboardNumberColumnState extends State<LeaderboardNumberColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animation;
  double height = 100;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    animation =
        Tween<Offset>(begin: const Offset(0, -2), end: Offset.zero).animate(
      controller,
    );

    Future.delayed(const Duration(milliseconds: 100)).then((value) {
      setState(() {
        height = widget.num == "2"
            ? 115
            : widget.num == "3"
                ? 100
                : 140;
      });
        controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.num == "1")
          AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return SlideTransition(
                  position: animation,
                  child: SvgPicture.asset(AssetsData.crown));
            },
          ),
        if (widget.num == "1") const SizedBox(height: 8),
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage(widget.avatar),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.name,
          style: Styles.mediumWeightTextStyle.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 8),
        AnimatedContainer(
          width: 75,
          height: height,
          duration: const Duration(milliseconds: 600),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: Colors.white,
          ),
          padding: const EdgeInsets.only(top: kNormPadding),
          child: Column(
            children: [
              CustomRichText(
                num: widget.num,
                text: widget.text,
              ),
              const SizedBox(height: 5),
              CustomOrangeContainer(text: widget.medals),
            ],
          ),
        ),
      ],
    );
  }
}
