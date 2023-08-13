import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/home%20view/cubits/home_cubit.dart';

import '../../../../core/constants.dart';
import '../../../../core/styles.dart';

class DateDayListItem extends StatelessWidget {
  const DateDayListItem({
    super.key,
    required this.date,
    required this.day,
    required this.index,
  });

  final int date;
  final String day;
  final int index;

  @override
  Widget build(BuildContext context) {
    int dayIndex = HomeCubit.get(context).dayIndex;
    return GestureDetector(
      onTap: () {
        HomeCubit.get(context).changeDayIndex(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          width: 42,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(kMaxRadius),
            border: dayIndex == index ? Border.all(width: 1, color: kBlue100) : Border.all(width: 1, color: kBlack10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                date.toString(),
                style: dayIndex == index
                    ? Styles.dateTextStyle.copyWith(color: kBlue100)
                    : Styles.dateTextStyle,
              ),
              Text(
                day,
                style: dayIndex == index
                    ? Styles.dayTextStyle.copyWith(color: kBlue100)
                    : Styles.dayTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
