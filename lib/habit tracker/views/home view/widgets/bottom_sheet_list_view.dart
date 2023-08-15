import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit%20tracker/views/home%20view/cubits/home_cubit.dart';

import '../../../../core/styles.dart';

class BottomSheetListView extends StatelessWidget {
  const BottomSheetListView({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: width * .55,
          height: 40,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemCount: emojis.length,
            itemBuilder: (context, index) {
              return emojiListViewItem(
                  index, context, index == HomeCubit.get(context).emojiIndex);
            },
          ),
        );
      },
    );
  }

  Padding emojiListViewItem(int index, BuildContext context, bool selected) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: GestureDetector(
        onTap: () {
          HomeCubit.get(context).changeEmojiIcon(index);
        },
        child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kNormRadius),
              border:
                  Border.all(width: 1, color: selected ? kBlue100 : kBlack10),
              color: selected ? kBlue10 : Colors.white,
            ),
            child: Center(
              child: Text(
                emojis[index],
                style: Styles.iconTextStyle.copyWith(fontSize: 18),
              ),
            )),
      ),
    );
  }
}
