import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {Key? key, required this.child, this.padding, this.margin, this.height})
      : super(key: key);
  final Widget child;
  final EdgeInsets? padding;
  final double? margin;
  final double ? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.all(margin ?? 2),
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
