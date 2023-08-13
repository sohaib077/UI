import 'package:flutter/material.dart';

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
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        Text(
          "VIEW ALL",
          style: Styles.labelTextStyle.copyWith(color: kBlue100),
        )
      ],
    );
  }
}
