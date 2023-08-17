import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class AppBarSeparator extends StatelessWidget {
  const AppBarSeparator({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: kBlack10,
    );
  }
}
