import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/discover view/widgets/discover_learning_list_view_item.dart';

import '../../../../core/assets_data.dart';

class DiscoverLearningListView extends StatelessWidget {
  const DiscoverLearningListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<Map<String , String>> learning = [
      {"image" : AssetsData.learningImage1 , "title" : "Why should we drink water often?",},
      {"image" : AssetsData.learningImage2 , "title" : "Benefits of regular walking",}
    ];
    return SizedBox(
      height: 132,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: kMaxPadding),
        itemCount: 2,
        itemBuilder: (context, index) {
          return DiscoverLearningListViewItem(image: learning[index]["image"]!, title: learning[index]["title"]!);
        },
      ),
    );
  }
}
