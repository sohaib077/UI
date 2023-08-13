import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/home view/widgets/date_day_list_item.dart';

class HomeDayDateListView extends StatelessWidget {
  const HomeDayDateListView({
    super.key,
    required this.days,
  });

  final List<String> days;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return DateDayListItem(
            date: index + 1,
            day: days[index % 7],
            index: index,
          );
        },
      ),
    );
  }
}
