import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/bottom_sheet_texts1.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_container.dart';

class CustomBottomSheetRow extends StatelessWidget {
  const CustomBottomSheetRow({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  final String title;
  final String subTitle;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: 0,
      padding: const EdgeInsets.all(kNormPadding - 3),
      child: Row(
        children: [
          BottomSheetTexts(
            title: title,
            subTitle: subTitle,
          ),
          const SizedBox(width: 5),
          SvgPicture.asset(icon)
        ],
      ),
    );
  }
}
