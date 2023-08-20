import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_container.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/constants.dart';
import '../../../../core/styles.dart';

class LeaderboardListViewItem extends StatelessWidget {
  const LeaderboardListViewItem({
    super.key,
    required this.name,
    required this.points, required this.avatar, required this.num,
  });

  final String name;
  final String points;
  final String avatar;
  final String num;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: CustomContainer(
        margin: 0,
        padding: const EdgeInsets.all(kNormPadding - 5),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: kBlack10,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Text(
                  num,
                  style:
                      Styles.mediumWeightTextStyle.copyWith(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: Styles.mediumWeightTextStyle),
                const SizedBox(height: 3),
                Text(points, style: Styles.bottomSheetSubTitle),
              ],
            ),
            const Spacer(),
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage(avatar),
            ),
          ],
        ),
      ),
    );
  }
}
