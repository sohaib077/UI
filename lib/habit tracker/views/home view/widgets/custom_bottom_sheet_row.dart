import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/home view/widgets/popular_habits_list_view_item.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/bottom_sheet_texts1.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/custom_container.dart';

import '../../../../core/assets_data.dart';
import '../../../../core/styles.dart';
import 'custom_icon_button.dart';

class CustomBottomSheetRow extends StatelessWidget {
  const CustomBottomSheetRow({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.flag = false,
  });

  final String title;
  final String subTitle;
  final String icon;
  final bool flag;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        if (flag) customModalBottomSheet(context);
      },
      child: CustomContainer(
        margin: 0,
        padding: const EdgeInsets.all(kNormPadding - 3),
        child: Row(
          children: [
            BottomSheetTexts(
              title: title,
              subTitle: subTitle,
            ),
            const SizedBox(width: 5),
            SvgPicture.asset(icon)
          ],
        ),
      ),
    );
  }

  Future<dynamic> customModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(color: Colors.white, height: 5, width: double.infinity,),
                SvgPicture.asset(AssetsData.top),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(kMaxPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NEW GOOD HABIT',
                    style: Styles.bottomSheetSubTitle.copyWith(
                        fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  CustomContainer(
                    margin: 0,
                    padding: const EdgeInsets.all(kNormPadding),
                    child: Row(
                      children: const [
                        Text(
                          "Create Custom Habit",
                          style: Styles.mediumWeightTextStyle,
                        ),
                        Spacer(),
                        CustomIconButton(
                          icon: AssetsData.addIcon,
                          iconColor: Colors.black,
                          padding: 10,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'POPULAR Habits',
                    style: Styles.bottomSheetSubTitle.copyWith(
                        fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  // const PopularHabitsListViewItem(),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      itemCount: habitModel.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return PopularHabitsListViewItem(index: index);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
