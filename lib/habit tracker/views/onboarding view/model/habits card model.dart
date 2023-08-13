import 'package:flutter/material.dart';

class HabitsCardModel {
  final String title;
  final String subTitle;
  final String leadingIcon;
  final double percent;
  final Widget trailing;

  const HabitsCardModel({
    required this.title,
    required this.subTitle,
    required this.leadingIcon,
    required this.percent,
    required this.trailing,
  });
}
