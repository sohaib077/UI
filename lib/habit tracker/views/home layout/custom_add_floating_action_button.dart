import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/core/constants.dart';

class CustomAddFloatingActionButton extends StatelessWidget {
  const CustomAddFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kNormPadding),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.small(
          hoverElevation: 0,
          backgroundColor: Colors.transparent,
          splashColor: Colors.transparent,
          elevation: 0,
          highlightElevation: 0,
          onPressed: () {},
          child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color(0xff6B73FF),
                  Color(0xff000DFF),
                ]),
              ),
              child: IconButton(
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {},
                icon: SvgPicture.asset(AssetsData.addIcon),
              )),
        ),
      ),
    );
  }
}
