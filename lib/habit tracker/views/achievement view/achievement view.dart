import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/achievement%20view/widgets/achievement_view_body.dart';

import '../../../core/shared_methods.dart';

class AchievementView extends StatelessWidget {
  const AchievementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customEmptyAppBar(),
      body: const AchievementViewBody(),
    );
  }
}
