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
}
