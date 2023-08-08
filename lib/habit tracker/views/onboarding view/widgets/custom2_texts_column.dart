import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custom2TextsColumn extends StatelessWidget {
  const Custom2TextsColumn({
    super.key,
    required this.height, required this.headline, required this.text,
  });

  final double height;
  final String headline;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headline,
          // 'Create \nGood Habits',
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          text,
          // "Change your life by slowly adding new healty habits\nand sticking to them.",
          style: TextStyle(color: Color(0xffD7D9FF)),
        ),
      ],
    );
  }
}
