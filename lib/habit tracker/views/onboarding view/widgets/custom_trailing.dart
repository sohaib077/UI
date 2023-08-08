import 'package:flutter/material.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/constants.dart';

class CustomTrailing extends StatelessWidget {
  const CustomTrailing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 13,
          backgroundImage: Image.asset(AssetsData.avatar1).image,
        ),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(kMinRadius)),
            border: Border.all(
              width: 1.5,
              color: kGrey1,
            ),
          ),
          child: const Icon(
            Icons.check_rounded,
            color: Color(0xff3BA935),
            size: 22,
          ),
        ),
      ],
    );
  }
}
