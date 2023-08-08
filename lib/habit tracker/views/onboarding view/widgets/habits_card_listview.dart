import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom_trailing.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/habits_card_item.dart';

import 'onboarding2_circle_avatars.dart';

class HabitsCardListview extends StatelessWidget {
  const HabitsCardListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),

        itemBuilder: (context, index) =>
            HabitsCardItem(cardItem: cardList[index]),
      ),
    );
  }
}

class CardItem {
  final String title;
  final String subTitle;
  final String leadingIcon;
  final double percent;
  final Widget trailing;

  CardItem({
    required this.title,
    required this.subTitle,
    required this.leadingIcon,
    required this.percent,
    required this.trailing,
  });
}

List<CardItem> cardList = [
  CardItem(
    title: 'Drink the water',
    subTitle: '500/2000 ML',
    leadingIcon: '💧',
    percent: .25,
    trailing: const Onboarding2CircleAvatars(flag: true, add: true),
  ),
  CardItem(
    title: 'Walk',
    subTitle: '0/10000 STEPS',
    leadingIcon: '🚶‍♂',
    percent: .5,
    trailing: const Onboarding2CircleAvatars(add: true),
  ),
  CardItem(
    title: 'Meditate',
    subTitle: '30/30 MIN',
    leadingIcon: '🧘🏻‍♂',
    percent: 1,
    trailing: const CustomTrailing(),
  ),
];
