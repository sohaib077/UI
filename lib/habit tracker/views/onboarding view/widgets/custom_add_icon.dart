import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

class CustomAddIcon extends StatelessWidget {
  const CustomAddIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(kMinRadius)),
        border: Border.all(
          width: 1.5,
          color: kBlack10,
        ),
      ),
      padding: const EdgeInsets.all(1),
      child: const Icon(
        Icons.add_rounded,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
