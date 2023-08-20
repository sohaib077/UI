import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/achievement%20view/widgets/custom_orange_container.dart';
import 'package:ui/habit%20tracker/views/discover%20view/widgets/custom_app_bar.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/styles.dart';
import '../../achievement view/widgets/achievement_toggle_tabs.dart';
import '../../home view/widgets/custom_icon_button.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Your Profile',
                style: Styles.appBarTextStyle,
              ),
              const Spacer(),
              const CustomIconButton(icon: AssetsData.settingIcon),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(AssetsData.profileAvatar),
              ),
              const SizedBox(width: 8),
              Column(
                children: const [
                  Text("Mert Kahveci", style: Styles.titleTextStyle),
                  SizedBox(height: 2),
                  CustomOrangeContainer(text: "1452 Points"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          const AchievementToggleTabs(
            tab1: "Activity",
            tab2: "Friends",
            tab3: "Achievements",
            flag: true,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
