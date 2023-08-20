
import 'package:flutter/material.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/styles.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/custom_icon_button.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_container.dart';

class FriendsListViewItem extends StatefulWidget {
  const FriendsListViewItem(
      {super.key, required this.title, required this.subTitle, required this.avatar, required this.index});

  final String title;
  final String subTitle;
  final String avatar;
  final int index;
  @override
  State<FriendsListViewItem> createState() => _FriendsListViewItemState();
}

class _FriendsListViewItemState extends State<FriendsListViewItem> with SingleTickerProviderStateMixin {
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
        return  SlideTransition(
          position: animation,
          child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: CustomContainer(
              margin: 0,
              padding: const EdgeInsets.all(kNormPadding - 2),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(widget.avatar),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title, style: Styles.mediumWeightTextStyle),
                      const SizedBox(height: 3),
                      Text(widget.subTitle, style: Styles.bottomSheetSubTitle),
                    ],
                  ),
                  const Spacer(),
                  const CustomIconButton(icon: AssetsData.trashIcon),
                ],
              )),
      ),
        );
      },
    );
  }
}
