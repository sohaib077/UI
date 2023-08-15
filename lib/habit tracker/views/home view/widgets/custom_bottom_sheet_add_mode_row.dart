import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/home view/widgets/bottom_sheet_list_view.dart';
import 'package:ui/habit tracker/views/home view/widgets/bottom_sheet_texts1.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_container.dart';

class CustomBottomSheetAddModeRow extends StatelessWidget {
  const CustomBottomSheetAddModeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return CustomContainer(
      margin: 0,
      padding: const EdgeInsets.only(
        top: kNormPadding - 3,
        bottom: kNormPadding - 3,
        left: kNormPadding - 3,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BottomSheetTexts(),
              const SizedBox(width: 5),
              BottomSheetListView(width: width),
            ],
          ),
        ],
      ),
    );
  }
}
