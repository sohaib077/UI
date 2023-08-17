import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

import '../../../../core/styles.dart';

class PopularHabitsListViewItem extends StatelessWidget {
  const PopularHabitsListViewItem({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        // height: 120,
        width: 120,
        padding: const EdgeInsets.all(kNormPadding-2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kMaxRadius),
          color: habitModel[index]["color"],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kNormRadius),
              ),
              padding: const EdgeInsets.all(5),
              margin: EdgeInsets.zero,
              child: Text(
                habitModel[index]["icon"],
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              habitModel[index]["title"],
              style: Styles.mediumWeightTextStyle,
            ),
            const SizedBox(height: 3),
            Text(
              habitModel[index]["subTitle"],
              style: Styles.bottomSheetSubTitle.copyWith(color: kBlack60),
            ),
          ],
        ),
      ),
    );
  }
}
