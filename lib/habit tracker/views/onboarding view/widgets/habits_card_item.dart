import 'package:flutter/material.dart';
import '../../../../core/constants.dart';
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
    return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kMaxRadius),
          ),
          child: ListTile(
            leading: CustomCircularPercent(
                percent: cardItem.percent, text: cardItem.leadingIcon),
            title: ListTileTitle(title: cardItem.title),
            subtitle: ListTileSubTitle(
              subTitle: cardItem.subTitle,
            ),
            trailing: cardItem.trailing,
            minLeadingWidth: 0,
            minVerticalPadding: 10,
            dense: true,
            visualDensity: const VisualDensity(vertical: -3),
          ),
        );
  }
}
