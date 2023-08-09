import 'package:flutter/material.dart';
import 'package:ui/core/styles.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.appBarTextStyle,
    );
  }
}
