import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/list_tile_sub_title.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/list_tile_title.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/onboarding2_circle_avatars.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/time_icon.dart';

class Onboarding2ListTile extends StatelessWidget {
  const Onboarding2ListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const String title = 'Best Runners! 🏃🏻';
    const String subTitle = '5 days 13 hours left';
    return const ListTile(
      leading: TimeIcon(),
      title: ListTileTitle(title: title, avatars: Onboarding2CircleAvatars()),
      subtitle: ListTileSubTitle(subTitle: subTitle , flag: true,),
      minLeadingWidth: 0,
      minVerticalPadding: 5,
      dense: true,
      visualDensity: VisualDensity(vertical: -3),
      // trailing: const Onboarding2CircleAvatars(),
    );
  }
}
