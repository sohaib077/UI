import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/profile%20view/cubits/profile_cubit.dart';

import '../../../../core/constants.dart';

class AchievementToggleTabs extends StatefulWidget {
  const AchievementToggleTabs(
      {Key? key, this.tab1, this.tab2, this.tab3, this.flag = false})
      : super(key: key);

  @override
  State<AchievementToggleTabs> createState() => _AchievementToggleTabsState();

  final String? tab1;
  final String? tab2;
  final String? tab3;
  final bool flag;
}

class _AchievementToggleTabsState extends State<AchievementToggleTabs> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: 35,
      decoration: BoxDecoration(
        color: kBlack10,
        borderRadius: BorderRadius.circular(kMaxRadius),
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
              left: index == 0
                  ? 0
                  : index == 2
                      ? width - (width / 3 - kMaxPadding) - 48
                      : kMaxPadding + 82,

              height: 35,
              // width: (width / 2) ,
              width: width / 3 - kMaxPadding,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  // width: MediaQuery.of(context).size.width / 2 - (kMaxPadding),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kMaxRadius),
                  ),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                        if (widget.flag)
                          ProfileCubit.get(context).changeIndex(index);
                      });
                    },
                    child: SizedBox(
                      width: width / 3 - kMaxPadding * 2,
                      child: Center(
                        child: Text(
                          widget.tab1 ?? "Daily",
                          style: TextStyle(
                            color: index == 0 ? kBlue1 : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                        if (widget.flag)
                          ProfileCubit.get(context).changeIndex(index);
                      });
                    },
                    child: SizedBox(
                      width: width / 3 - kMaxPadding * 2,
                      child: Center(
                        child: Text(
                          widget.tab2 ?? "Weekly",
                          style: TextStyle(
                            color: index == 1 ? kBlue1 : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                        if (widget.flag)
                          ProfileCubit.get(context).changeIndex(index);
                      });
                    },
                    child: SizedBox(
                      width: width / 3 - kMaxPadding * 2,
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            widget.tab3 ?? "Monthly",
                            style: TextStyle(
                              color: index == 2 ? kBlue1 : null,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
