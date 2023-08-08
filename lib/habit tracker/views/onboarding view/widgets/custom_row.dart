import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.text,
    required this.icon, this.iconColor,
  });

  final String text;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: kMinPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 18,
            color: iconColor,
          ),
          const SizedBox(width: 3),
          Text(
            text,
            style: ThemeData().textTheme.bodyMedium!.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
