import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/profile view/ widgets/acitivity_title_row.dart';
import 'package:ui/habit tracker/views/profile view/ widgets/activity_list_view_item.dart';

class ProfileActivityColumn extends StatelessWidget {
  const ProfileActivityColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AcitivityTitleRow(),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: activitiesList.length,
          itemBuilder: (context, index) {
            return ActivityListViewItem(
              title: activitiesList[index].title,
              subTitle: activitiesList[index].subTitle,
              icon: activitiesList[index].icon,
              rotate: activitiesList[index].flag,
              color: activitiesList[index].iconColor,
              index: index,
            );
          },
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
