import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

import '../../home view/widgets/home_titles_row.dart';

class DiscoverTitleRow extends StatelessWidget {
  const DiscoverTitleRow({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kMaxPadding , left: kMaxPadding , top: 12 , bottom: 5),
      child: HomeTitlesRow(title: title),
    );
  }
}
