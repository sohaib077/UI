import 'package:flutter/material.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/habit tracker/views/home view/widgets/custom_icon_button.dart';

class CustomAppBarIconButtons extends StatelessWidget {
  const CustomAppBarIconButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CustomIconButton(icon: AssetsData.calendarIcon),
        Spacer(),
        CustomIconButton(
          icon: AssetsData.notificationIcon,
          isNotification: true,
        ),
      ],
    );
  }
}
