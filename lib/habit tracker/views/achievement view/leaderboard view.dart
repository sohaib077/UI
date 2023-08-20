import 'package:flutter/material.dart';
import 'package:ui/core/shared_methods.dart';
import 'package:ui/habit%20tracker/views/achievement%20view/widgets/leaderboard_view_body.dart';

import '../../../core/constants.dart';

class LeaderboardView extends StatelessWidget {
  const LeaderboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customEmptyAppBar(),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kPurple1,
                kBlue1,
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
          ),
          child: const LeaderboardViewBody()),
    );
  }
}
