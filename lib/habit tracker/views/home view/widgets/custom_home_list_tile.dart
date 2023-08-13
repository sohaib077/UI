import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/styles.dart';

class CustomHomeListTile extends StatelessWidget {
  const CustomHomeListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Text(
        'Hi, Mert 👋🏻',
        style: Styles.titleTextStyle,
      ),
      subtitle: const Text(
        'Let’s make habits together!',
        style: Styles.subTitleTextStyle,
      ),
      trailing: CircleAvatar(
        radius: 18,
        backgroundColor: kBlue10,
        child: Text(
          '😇',
          style: Styles.iconTextStyle.copyWith(fontSize: 16),
        ),
      ),
      visualDensity: const VisualDensity(vertical: 0),
      dense: true,
    );
  }
}
