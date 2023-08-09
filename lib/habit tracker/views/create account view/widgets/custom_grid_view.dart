import 'package:ui/habit%20tracker/views/create%20account%20view/widgets/grid_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui/core/constants.dart';

import '../models/gridview item model.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.items,
  });

  final List<GridViewItemModel> items;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: kMaxPadding,
      mainAxisSpacing: kNormPadding,
      itemCount: items.length,
      itemBuilder: (context, index) {
    return GridViewItem(
      icon: items[index].icon,
      text: items[index].text,
      index: index,
    );
      },
    );
  }
}
