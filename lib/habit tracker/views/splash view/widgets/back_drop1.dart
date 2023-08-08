import 'dart:ui';

import 'package:flutter/material.dart';

class BackDrop1 extends StatelessWidget {
  const BackDrop1({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -height * .2,
      left: -height * 0.25,
      child: Container(
        width: height * .65,
        height: height * .65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              Color(0xffEF88ED).withOpacity(.4),
              Color(0xff7269E3).withOpacity(.4),
              Color(0xff8350DB).withOpacity(.4),
            ],
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
          child: SizedBox(
            width: height * .6,
            height: height * .6,
          ),
        ),
      ),
    );
  }
}
