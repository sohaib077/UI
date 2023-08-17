import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/discover view/widgets/discover_app_bar.dart';
import 'package:ui/habit tracker/views/discover view/widgets/discover_challenges_list_view.dart';
import 'package:ui/habit tracker/views/discover view/widgets/discover_learning_list_view.dart';
import 'package:ui/habit tracker/views/discover view/widgets/discover_title_row.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/app_bar_separator.dart';

import '../../../../core/assets_data.dart';
import '../../home view/widgets/popular_habits_list_view.dart';

class DiscoverViewBody extends StatelessWidget {
  const DiscoverViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          DiscoverAppBar(),
          AppBarSeparator(),
          DiscoverTitleRow(title: 'Suggested for You'),
          const Padding(
            padding: EdgeInsets.only(left: kMaxPadding),
            child: PopularHabitsListView(),
          ),
          DiscoverTitleRow(title: 'Habit Clubs'),
          const Padding(
            padding: EdgeInsets.only(left: kMaxPadding),
            child: PopularHabitsListView(flag: true),
          ),
          const DiscoverTitleRow(title: "Challenges"),
          const DiscoverChallengesListView(),
          const DiscoverTitleRow(title: "Learning"),
          DiscoverLearningListView(),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
