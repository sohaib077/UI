import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/habit tracker/views/home view/widgets/app_bar_separator.dart';
import 'package:ui/habit tracker/views/home view/widgets/custom_home_app_bar.dart';
import 'package:ui/habit tracker/views/home view/widgets/daily_goals_card.dart';
import 'package:ui/habit tracker/views/home view/widgets/home_day_date_list_view.dart';
import 'package:ui/habit tracker/views/home view/widgets/home_titles_row.dart';
import 'package:ui/habit%20tracker/views/home%20view/cubits/home_cubit.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/challenges_card.dart';

import '../../../../core/constants.dart';
import '../../onboarding view/widgets/habits_card_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> days = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"];
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const CustomHomeAppBar(),
              const AppBarSeparator(),
              const SizedBox(height: 10),
              HomeDayDateListView(days: days),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kMaxPadding),
                child: Column(
                  children: [
                    DailyGoalsCard(percent: HomeCubit.get(context).goals / 4.0),
                    const SizedBox(height: 12),
                    const HomeTitlesRow(title: 'Challenges'),
                    const SizedBox(height: 1),
                    const ChallengesCard(),
                    const SizedBox(height: 3),
                    const HomeTitlesRow(title: 'Habits'),
                    const SizedBox(height: 1),
                    const HabitsCardListview(itemCount: 4),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
