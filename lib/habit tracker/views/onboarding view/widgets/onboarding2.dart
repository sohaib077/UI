import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/challenges_card.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom_onboarding2_text.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom2_texts_column.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/habits_card_listview.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const CustomOnboarding2Text(title: 'Challenges'),
        const ChallengesCard(),
        const SizedBox(height: 4),
        const CustomOnboarding2Text(title: 'Habits'),
        const HabitsCardListview(),
        Custom2TextsColumn(
          height: height,
          headline: 'Track\nYour Progress',
          text:
              'Everyday you become one step closer to\nyour goal. Don’t give up!',
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
