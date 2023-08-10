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
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
      builder: (context, state) {
        HomeLayoutCubit cubit = HomeLayoutCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kNormPadding,
            vertical: kMinPadding,
          ),
          child: Container(
            height: 65,
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
                border: Border.all(width: 1.5, color: kGrey1)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: BottomNavigationBar(
              items: items(cubit),
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.red,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: cubit.currentPageIndex,
              onTap: (index) {
                cubit.changePageIndex(index);
              },
            ),
          ),
        );
      },
    );
  }

  List<BottomNavigationBarItem> items(HomeLayoutCubit cubit) => [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsData.homeIcon,
            color: cubit.currentPageIndex != 0 ? kGrey1 : null,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            cubit.currentPageIndex == 1
                ? AssetsData.selectedDiscoverIcon
                : AssetsData.discoverIcon,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsData.addIcon,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            cubit.currentPageIndex == 3
                ? AssetsData.selectedAchievementIcon
                : AssetsData.achievementIcon,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            cubit.currentPageIndex == 4
                ? AssetsData.selectedProfileIcon
                : AssetsData.profileIcon,
          ),
          label: '',
        ),
      ];
}
