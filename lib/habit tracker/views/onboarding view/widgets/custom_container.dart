import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, required this.child, this.padding})
      : super(key: key);
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kMaxRadius),
        border: Border.all(width: 1, color: kBlack10),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
