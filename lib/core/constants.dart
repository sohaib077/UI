import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/profile%20view/%20widgets/profile_achievement_column.dart';
import 'package:ui/habit%20tracker/views/profile%20view/%20widgets/profile_activity_column.dart';
import 'package:ui/habit%20tracker/views/profile%20view/%20widgets/profile_friends_column.dart';
import 'package:ui/habit%20tracker/views/profile%20view/models/activity_model.dart';

import '../habit tracker/views/onboarding view/model/habits card model.dart';
import '../habit tracker/views/onboarding view/widgets/custom_add_icon.dart';
import '../habit tracker/views/onboarding view/widgets/custom_trailing.dart';
import '../habit tracker/views/onboarding view/widgets/onboarding2_circle_avatars.dart';
import '../habit tracker/views/profile view/models/friends_model.dart';
import 'assets_data.dart';

const kPurple1 = Color(0xff6B73FF);
const kBlue1 = Color(0xff000dff);
const kBlue100 = Color(0xff3843FF);
const kBlue10 = Color(0xffDDF2FC);
const kBlue40 = Color(0xffAFB4FF);
const kBlue20 = Color(0xffD7D9FF);
const kBlack10 = Color(0xffEAECF0);
const kBackground1 = Color(0xffF6F9FF);
const kBlack20 = Color(0xffCDCDD0);
const kBlack40 = Color(0xff9B9BA1);
const kBlack100 = Color(0xff040415);
const kBlack60 = Color(0xff686873);
const kGreen100 = Color(0xff3BA935);
const kRed100 = Color(0xffE3524F);
const kOrange20 = Color(0xffFCDCD3);
const kOrange10 = Color(0xffFFF3DA);
const kTeal20 = Color(0xffD5ECE0);

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

const List<String> emojis = ['😡', '☹', '😐️', "🙂", "😍"];

const List<Map<String, dynamic>> habitModel = [
  {"color": kOrange20, "icon": "🚶‍♀️", "title": "Walk", "subTitle": "10 km"},
  {"color": kBlue20, "icon": "🏊🏻‍♂️", "title": "Swim", "subTitle": "30 min"},
  {"color": kTeal20, "icon": "📕", "title": "Read", "subTitle": "20 min"},
  {
    "color": Colors.white,
    "icon": "😻️",
    "title": "Cat Lovers",
    "subTitle": "462 members"
  },
  {
    "color": Colors.white,
    "icon": "🌃",
    "title": "Istanbul",
    "subTitle": "+500 members"
  },
  {
    "color": Colors.white,
    "icon": "🏃🏻‍♂",
    "title": "Runners",
    "subTitle": "336 members"
  },
];

final List<ActivityModel> activitiesList = [
  ActivityModel(
      title: "112 points earned!",
      subTitle: "Today, 12:34 PM",
      icon: AssetsData.upArrowIcon),
  ActivityModel(
      title: "62 points earned!",
      subTitle: "Today, 07:12 AM",
      icon: AssetsData.upArrowIcon),
  ActivityModel(
      title: "Challenge completed!",
      subTitle: "Yesterday, 14:12 PM",
      icon: AssetsData.medalIcon),
  ActivityModel(
      title: "Weekly winning streak is broken!",
      subTitle: "12 Jun, 16:14 PM",
      icon: AssetsData.upArrowIcon,
      flag: true,
      iconColor: kRed100),
  ActivityModel(
      title: "96 points earned!",
      subTitle: "11 Jun, 17:45 PM",
      icon: AssetsData.upArrowIcon),
  ActivityModel(
      title: "110 points earned!",
      subTitle: "10 Jun, 18:32 PM",
      icon: AssetsData.upArrowIcon),
  ActivityModel(
      title: "112 points earned!",
      subTitle: "10 Jun, 16:32 PM",
      icon: AssetsData.upArrowIcon),
  ActivityModel(
      title: "112 points earned!",
      subTitle: "Today, 12:34 PM",
      icon: AssetsData.upArrowIcon),
];

final List<FriendsModel> friendsList = [
  FriendsModel(
      name: "Sharie Bento", points: "912 Points", avatar: AssetsData.friend1),
  FriendsModel(
      name: "Micah Dantoni", points: "850 Points", avatar: AssetsData.friend2),
  FriendsModel(
      name: "Oral Padlo", points: "950 Points", avatar: AssetsData.friend3),
  FriendsModel(
      name: "Maressa Mcdiarmid",
      points: "700 Points",
      avatar: AssetsData.friend4),
  FriendsModel(
      name: "Regina Stire", points: "1000 Points", avatar: AssetsData.friend5),
  FriendsModel(
      name: "Jennings Stohler",
      points: "999 Points",
      avatar: AssetsData.avatar1),
];

const List<Map<String, dynamic>> achievementsList = [
  {
    "color": kBlue10,
    "icon": "🏃🏻‍♂️",
    "title": "Best Runner!",
    "subTitle": "1 months ago"
  },
  {
    "color": kOrange10,
    "icon": "🥇",
    "title": "Best of the month!",
    "subTitle": "2 days ago"
  },
];

final List<FriendsModel> leaderboardList = [
  FriendsModel(
      name: "Oral Padlo", points: "950 Points", avatar: AssetsData.friend3),
  FriendsModel(
      name: "Sharie Bento", points: "789 Points", avatar: AssetsData.friend1),
  FriendsModel(
      name: "Micah Dantoni", points: "650 Points", avatar: AssetsData.friend2),
  FriendsModel(
      name: "Maressa Mcdiarmid",
      points: "555 Points",
      avatar: AssetsData.friend4),
  FriendsModel(
      name: "Regina Stire", points: "456 Points", avatar: AssetsData.friend5),
];
