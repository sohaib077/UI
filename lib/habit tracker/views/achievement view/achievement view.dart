import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/achievement%20view/widgets/achievement_view_body.dart';

class AchievementView extends StatelessWidget {
  const AchievementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AchievementViewBody(),
    );
  }
}
