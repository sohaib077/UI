import 'package:flutter/material.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/core/constants.dart';

class Onboarding2CircleAvatars extends StatelessWidget {
  const Onboarding2CircleAvatars({
    super.key,
    this.flag = false,
    this.add = false,
  });

  final bool flag;
  final bool add;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          widthFactor: 0.6,
          child: CircleAvatar(
            radius: add ? 13 :11,
            backgroundImage: Image.asset(AssetsData.avatar1).image,
          ),
        ),
        Align(
          widthFactor: 0.6,
          child: CircleAvatar(
            radius: add ? 15 : 13,
            backgroundColor: Colors.white,
            child: Transform.scale(
              scaleX: -1,
              child: CircleAvatar(
                radius: add ? 13 :11,
                backgroundImage: Image.asset(AssetsData.avatar2).image,
              ),
            ),
          ),
        ),
        if (flag)
          const Align(
            widthFactor: 0.6,
            child: CircleAvatar(
              radius: 13,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 11,
                backgroundColor: Color(0xffEBECFF),
                child: Text('+3',
                    style: TextStyle(
                        color: kBlue100,
                        fontSize: 10,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        if (add) const SizedBox(width: 10),
        if (add)
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(kMinRadius)),
              border: Border.all(
                width: 1.5,
                color: kGrey1,
              ),
            ),
            child: const Icon(
              Icons.add_rounded,
              color: Colors.black,
              size: 22,
            ),
          ),
      ],
    );
  }
}
