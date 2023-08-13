import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/home view/widgets/custom_app_bar_icon_buttons.dart';
import 'package:ui/habit tracker/views/home view/widgets/custom_home_list_tile.dart';

import '../../../../core/constants.dart';
import 'custom_toggle_title.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: kNormPadding, vertical: 5),
        child: Column(
          children: const [
            CustomAppBarIconButtons(),
            CustomHomeListTile(),
            CustomToggleTitle(),
            SizedBox(height: kMinPadding),
          ],
        ),
      ),
    );
  }
}
