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

class HabitsCardItem extends StatelessWidget {
  const HabitsCardItem({
    super.key,
    required this.cardItem,
  });

  final HabitsCardModel cardItem;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: customStartActionPane(),
      endActionPane: customEndActionPane(),
      child: CustomContainer(
        child: ListTile(
          leading: CustomCircularPercent(
              percent: cardItem.percent, text: cardItem.leadingIcon),
          title: ListTileTitle(title: cardItem.title),
          subtitle: ListTileSubTitle(
            subTitle: cardItem.subTitle,
          ),
          trailing: cardItem.trailing,
          minLeadingWidth: 0,
          minVerticalPadding: 0,
          dense: true,
          visualDensity: const VisualDensity(vertical: -2),
        ),
      ),
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
