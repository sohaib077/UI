import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit%20tracker/views/home%20layout/cubits/home_layout_cubit.dart';
import 'package:ui/habit%20tracker/views/home%20layout/cubits/home_layout_cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentPageIndex,
  });

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kNormPadding,
        vertical: kMinPadding-2,
      ),
      child: Container(
        // height: 65,
        // padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(60),
            border: Border.all(width: 1, color: kBlack10)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomNavigationBar(
          items: items(currentPageIndex),
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentPageIndex,
          onTap: (index) {
            HomeLayoutCubit.get(context).changePageIndex(index);
          },
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> items(int currentPageIndex) => [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsData.homeIcon,
            color: currentPageIndex != 0 ? kBlack10 : null,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            currentPageIndex == 1
                ? AssetsData.selectedDiscoverIcon
                : AssetsData.discoverIcon,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsData.addIcon,
            height: 20,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            currentPageIndex == 3
                ? AssetsData.selectedAchievementIcon
                : AssetsData.achievementIcon,
            height: 25,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            currentPageIndex == 4
                ? AssetsData.selectedProfileIcon
                : AssetsData.profileIcon,
          ),
          label: '',
        ),
      ];
}
