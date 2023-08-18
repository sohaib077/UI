import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/core/constants.dart';

abstract class Styles {
  static TextStyle appBarTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
    color: Colors.black,
  );
  static const TextStyle labelTextStyle = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
  static const TextStyle iconTextStyle = TextStyle(
    fontSize: 40,
    color: Colors.black,
  );
  static const TextStyle titleTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static const TextStyle subTitleTextStyle = TextStyle(
    color: kBlack40,
  );
  static const TextStyle dateTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle dayTextStyle = TextStyle(
    color: kBlack20,
    fontSize: 10,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
  static const TextStyle listTileTitle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 13,
  );
  static const TextStyle listTileSubTitle = TextStyle(
    color: kBlue40,
    fontSize: 12,
  );
  static const TextStyle bottomSheetSubTitle = TextStyle(
    color: kBlack40,
    fontSize: 12,
  );
  static const TextStyle mediumWeightTextStyle =
      TextStyle(fontWeight: FontWeight.w500);
  static const TextStyle cardSubtitleTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
    fontSize: 12,
  );
  static const TextStyle subLabelTextStyle =
      TextStyle(color: kBlack40, fontSize: 10, fontWeight: FontWeight.bold);
}
