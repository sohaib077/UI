import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onboarding2_circle_avatars.dart';

class ListTileTitle extends StatelessWidget {
  const ListTileTitle({
    super.key,
    required this.title, this.avatars,
  });

  final String title;
  final Widget ? avatars;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        avatars ?? Container(),
      ],
    );
  }
}
