import 'dart:ui';

class ActivityModel {
  final String title;
  final String subTitle;
  final String icon;
  final bool? flag;
  final Color? iconColor;

  ActivityModel(
      {required this.title, required this.subTitle, required this.icon , this.flag , this.iconColor});
}

