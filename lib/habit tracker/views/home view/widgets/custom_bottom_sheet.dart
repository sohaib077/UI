import 'package:flutter/material.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/habit tracker/views/home view/widgets/custom_bottom_sheet_add_mode_row.dart';
import 'package:ui/habit tracker/views/home view/widgets/custom_bottom_sheet_floating_close_button.dart';
import 'package:ui/habit tracker/views/home view/widgets/custom_bottom_sheet_row.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet(
      {Key? key, required this.controller, required this.animation})
      : super(key: key);
  final AnimationController controller;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const [
              CustomBottomSheetRow(
                title: "Quit Bad Habit",
                subTitle: "Never too late...",
                icon: AssetsData.shieldFailIcon,
              ),
              SizedBox(width: 8),
              CustomBottomSheetRow(
                title: "New Good Habit",
                subTitle: "For a better life",
                icon: AssetsData.shieldDoneIcon,
                flag : true,
              ),
            ],
          ),
          const SizedBox(height: 8),
          const CustomBottomSheetAddModeRow(),
          const SizedBox(height: 8),
          CustomBottomSheetFloatingCloseButton(
            controller: controller,
            animation: animation,
          ),
        ],
      ),
    );
  }
}
