import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/leaderboard_app_bar.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/leaderboard_list_view_item.dart';
import 'package:ui/habit tracker/views/achievement view/widgets/leaderboard_number_column.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/constants.dart';
import '../../home view/widgets/app_bar_separator.dart';

class LeaderboardViewBody extends StatelessWidget {
  const LeaderboardViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String title = "Jennings Stohler";
    final String subTitle = "912 Points";
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const LeaderboardAppBar(),
          const AppBarSeparator(),
          Stack(
            children: [
              Center(child: SvgPicture.asset(AssetsData.circle1)),
              Padding(
                padding: const EdgeInsets.all(kMaxPadding),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        LeaderboardNumberColumn(
                          num: '2',
                          text: "nd",
                          medals: "1223",
                          avatar: AssetsData.avatar2,
                          name: "Mirak",
                        ),
                        LeaderboardNumberColumn(
                          num: '1',
                          text: "st",
                          medals: "1452",
                          avatar: AssetsData.profileAvatar,
                          name: "Mert Kahveci",
                        ),
                        LeaderboardNumberColumn(
                          num: '3',
                          text: "rd",
                          medals: "968",
                          avatar: AssetsData.avatar1,
                          name: "Mike",
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: leaderboardList.length,
                      itemBuilder: (context, index) {
                        return  LeaderboardListViewItem(
                          name: leaderboardList[index].name,
                          points: leaderboardList[index].points,
                          avatar: leaderboardList[index].avatar,
                          num: (index+4).toString(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
