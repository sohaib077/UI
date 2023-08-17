import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/home view/widgets/popular_habits_list_view_item.dart';

class PopularHabitsListView extends StatelessWidget {
  const PopularHabitsListView({
    super.key,
     this.flag = false,
  });

  final bool flag;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return PopularHabitsListViewItem(index: flag ? 3 + index : index);
        },
      ),
    );
  }
}
