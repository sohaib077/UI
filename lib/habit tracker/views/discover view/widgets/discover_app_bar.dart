import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/discover view/widgets/custom_app_bar.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/styles.dart';
import '../../home view/widgets/custom_icon_button.dart';

class DiscoverAppBar extends StatelessWidget {
  const DiscoverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      child: Row(
        children: [
          Text(
            'Explore',
            style: Styles.appBarTextStyle,
          ),
          const Spacer(),
          const CustomIconButton(icon: AssetsData.searchIcon),
        ],
      ),
    );
  }
}
