import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomToggleTitle extends StatefulWidget {
  const CustomToggleTitle({Key? key}) : super(key: key);

  @override
  State<CustomToggleTitle> createState() => _CustomToggleTitleState();
}

class _CustomToggleTitleState extends State<CustomToggleTitle> {
  bool isToday = true;

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
              left: isToday ? 0 : width - (width / 2 - kMaxPadding) - 32,
              height: 35,
              // width: (width / 2) ,
              width: width / 2 - kMaxPadding,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isToday = true;
                      });
                    },
                    child: Text(
                      "Today",
                      style: TextStyle(
                        color: isToday ? kBlue1 : null,
                      ),
                    ),
                  ),
                  const Text("     "),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isToday = false;
                      });
                    },
                    child: Text(
                      "Clubs",
                      style: TextStyle(
                        color: !isToday ? kBlue1 : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
