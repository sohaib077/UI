import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

import '../../../../core/styles.dart';

class BottomSheetListView extends StatelessWidget {
  const BottomSheetListView({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * .55,
      height: 40,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: emojis.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kNormRadius),
                  border: Border.all(width: 1, color: kBlack10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    emojis[index],
                    style: Styles.iconTextStyle.copyWith(fontSize: 18),
                  ),
                )),
          );
        },
      ),
    );
  }
}
