import 'package:flutter/material.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/styles.dart';
import '../../home view/widgets/custom_icon_button.dart';

class ProfileFriendsTitleRow extends StatelessWidget {
  const ProfileFriendsTitleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("261 Friends", style: Styles.mediumWeightTextStyle),
        Spacer(),
        CustomIconButton(icon: AssetsData.plusIcon, padding: 2),
        SizedBox(width: 4),
        CustomIconButton(icon: AssetsData.editIcon),
      ],
    );
  }
}
