import 'package:flutter/material.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/styles.dart';

class DiscoverChallengesAvatars extends StatelessWidget {
  const DiscoverChallengesAvatars({
    super.key, required this.avatars,
  });
  final int avatars;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          widthFactor: 0.6,
          child: CircleAvatar(
            radius: 13,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 11,
              backgroundImage: Image.asset(AssetsData.avatar2).image,
            ),
          ),
        ),
        if(avatars == 2)
        Align(
          widthFactor: 0.6,
          child: CircleAvatar(
            radius: 13,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 11,
              backgroundImage: Image.asset(AssetsData.avatar1).image,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '$avatars friends joined',
          style: Styles.cardSubtitleTextStyle
              .copyWith(fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
