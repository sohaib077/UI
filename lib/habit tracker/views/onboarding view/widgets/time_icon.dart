import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

class TimeIcon extends StatelessWidget {
  const TimeIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            margin: const EdgeInsets.all(5),
            color: kBlue100, // Color
          ),
        ),
        const Icon(
          Icons.watch_later,
          color: Color(0xffEBECFF),
        ),
      ],
    );
  }
}
