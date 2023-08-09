import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/onboarding view/widgets/custom_trailing.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/habits_card_item.dart';
import '../model/habits card model.dart';
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


List<HabitsCardModel> cardList = [
  HabitsCardModel(
    title: 'Drink the water',
    subTitle: '500/2000 ML',
    leadingIcon: '💧',
    percent: .25,
    trailing: const Onboarding2CircleAvatars(flag: true, add: true),
  ),
  HabitsCardModel(
    title: 'Walk',
    subTitle: '0/10000 STEPS',
    leadingIcon: '🚶‍♂',
    percent: .5,
    trailing: const Onboarding2CircleAvatars(add: true),
  ),
  HabitsCardModel(
    title: 'Meditate',
    subTitle: '30/30 MIN',
    leadingIcon: '🧘🏻‍♂',
    percent: 1,
    trailing: const CustomTrailing(),
  ),
];
