import 'package:flutter/material.dart';

class ListTileSubTitle extends StatelessWidget {
  const ListTileSubTitle({
    super.key,
    required this.subTitle, this.flag = false,
  });

  final String subTitle;
  final bool flag;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          subTitle,
          style: const TextStyle(
            color: Color(0xff9B9BA1),
            fontSize: 10,
          ),
        ),
        const Spacer(),
        if(flag)
        const Text(
          '2 friends joined',
          style: TextStyle(
            color: Color(0xff9B9BA1),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
