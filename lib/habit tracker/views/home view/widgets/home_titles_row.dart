import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/popular_habits_list_view_item.dart';

import '../../../../core/constants.dart';
import '../../../../core/styles.dart';

class HomeTitlesRow extends StatelessWidget {
  const HomeTitlesRow({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Text(
          "VIEW ALL",
          style: Styles.labelTextStyle.copyWith(color: kBlue100),
        ),
      ],
    );
  }
}
