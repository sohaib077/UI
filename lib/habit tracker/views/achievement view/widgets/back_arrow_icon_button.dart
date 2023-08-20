import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class BackArrowIconButton extends StatelessWidget {
  const BackArrowIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: kBlack10),
        borderRadius: BorderRadius.circular(kNormRadius),
      ),
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 14,
        ),
      ),
    );
  }
}
