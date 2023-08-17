import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/discover view/widgets/discover_challenges_list_view_item.dart';

class DiscoverChallengesListView extends StatelessWidget {
  const DiscoverChallengesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: kMaxPadding),
        itemCount: 2,
        itemBuilder: (context, index) {
          return DiscoverChallengesListViewItem(index: index);
        },
      ),
    );
  }
}
