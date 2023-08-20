import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/profile view/ widgets/profile_friends_title_row.dart';

import 'friends_list_view_item.dart';

class ProfileFriendsColumn extends StatelessWidget {
  const ProfileFriendsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileFriendsTitleRow(),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: friendsList.length,
          itemBuilder: (context, index) {
            return FriendsListViewItem(
              title: friendsList[index].name,
              subTitle: friendsList[index].points,
              avatar: friendsList[index].avatar,
              index: index,
            );
          },
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
