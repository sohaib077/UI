import 'package:flutter/material.dart';

import '../habit tracker/views/onboarding view/model/habits card model.dart';
import '../habit tracker/views/onboarding view/widgets/custom_add_icon.dart';
import '../habit tracker/views/onboarding view/widgets/custom_trailing.dart';
import '../habit tracker/views/onboarding view/widgets/onboarding2_circle_avatars.dart';

const kPurple1 = Color(0xff6B73FF);
const kBlue1 = Color(0xff000dff);
const kBlue100 = Color(0xff3843FF);
const kBlue10 = Color(0xffDDF2FC);
const kBlue40 = Color(0xffAFB4FF);
const kBlack10 = Color(0xffEAECF0);
const kBackground1 =  Color(0xffF6F9FF);
const kBlack20 =  Color(0xffCDCDD0);
const kBlack40 =  Color(0xff9B9BA1);
const kGreen100 =  Color(0xff3BA935);


const double kMinPadding = 8;
const double kNormPadding = 16;
const double kMaxPadding = 24;

const double kMinRadius = 8;
const double kNormRadius = 12;
const double kMaxRadius = 16;
const double kButtonRadius = 40;

const List<HabitsCardModel> cardList = [
  HabitsCardModel(
    title: 'Drink the water',
    subTitle: '500/2000 ML',
    leadingIcon: '💧',
    percent: .25,
    trailing: Onboarding2CircleAvatars(flag: true, add: true),
  ),
  HabitsCardModel(
    title: 'Walk',
    subTitle: '0/10000 STEPS',
    leadingIcon: '🚶‍♂',
    percent: .5,
    trailing: Onboarding2CircleAvatars(add: true),
  ),
  HabitsCardModel(
    title: 'Meditate',
    subTitle: '30/30 MIN',
    leadingIcon: '🧘🏻‍♂',
    percent: 1,
    trailing: CustomTrailing(),
  ),
  HabitsCardModel(
    title: 'Water Plants',
    subTitle: '0/1 TIMES',
    leadingIcon: '🌿',
    percent: 0,
    trailing: CustomAddIcon(),
  ),
];
