import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/habits_card_item.dart';
import '../../../../core/constants.dart';

class HabitsCardListview extends StatelessWidget {
  const HabitsCardListview({
    super.key,
    this.itemCount,
  });

  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount ?? 3,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          HabitsCardItem(cardItem: cardList[index]),
    );
  }
}

