import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom_slidable_column.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_container.dart';

import '../../../../core/assets_data.dart';
import '../model/habits card model.dart';
import 'custom_circular_percent.dart';
import 'list_tile_sub_title.dart';
import 'list_tile_title.dart';

class HabitsCardItem extends StatefulWidget {
  const HabitsCardItem({
    super.key,
    required this.cardItem, required this.index,
  });

  final HabitsCardModel cardItem;
  final int index;
  @override
  State<HabitsCardItem> createState() => _HabitsCardItemState();
}

class _HabitsCardItemState extends State<HabitsCardItem>
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
        child: Slidable(
          startActionPane: customStartActionPane(),
          endActionPane: customEndActionPane(),
          child: CustomContainer(
            child: ListTile(
              leading: CustomCircularPercent(
                  percent: widget.cardItem.percent,
                  text: widget.cardItem.leadingIcon),
              title: ListTileTitle(title: widget.cardItem.title),
              subtitle: ListTileSubTitle(
                subTitle: widget.cardItem.subTitle,
              ),
              trailing: widget.cardItem.trailing,
              minLeadingWidth: 0,
              minVerticalPadding: 0,
              dense: true,
              visualDensity: const VisualDensity(vertical: -2),
            ),
          ),
        ),
      );
      },
    );
  }

  ActionPane customStartActionPane() {
    return ActionPane(
      motion: const ScrollMotion(),
      extentRatio: 0.3,
      children: [
        CustomSlidableAction(
          onPressed: (context) {},
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.zero,
          child: CustomContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomSlidableColumn(
                  icon: AssetsData.showIcon,
                  label: "View",
                ),
                Container(height: 30, width: 1, color: kBlack10),
                const CustomSlidableColumn(
                  icon: AssetsData.checkIcon,
                  label: "Done",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ActionPane customEndActionPane() {
    return ActionPane(
      motion: const ScrollMotion(),
      extentRatio: 0.3,
      children: [
        CustomSlidableAction(
          onPressed: (context) {},
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.zero,
          child: CustomContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomSlidableColumn(
                  icon: AssetsData.closeIcon,
                  label: "Fail",
                ),
                Container(height: 30, width: 1, color: kBlack10),
                const CustomSlidableColumn(
                  icon: AssetsData.rightArrowIcon,
                  label: "Skip",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
