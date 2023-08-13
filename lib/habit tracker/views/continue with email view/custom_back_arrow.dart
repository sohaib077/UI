import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

class CustomBackArrow extends StatelessWidget {
  const CustomBackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: kBlack10),
          borderRadius: BorderRadius.circular(kMaxRadius),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(kMaxRadius),
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 14,
          ),
        ),
      ),
    );
  }
}
