import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kMaxPadding,
          vertical: kNormPadding-5,
        ),
        child: child,
      ),
    );
  }
}
