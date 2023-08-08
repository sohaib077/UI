import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/core/constants.dart';

class EmailRow extends StatelessWidget {
  const EmailRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kNormPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AssetsData.loginIcon1,
          ),
          const SizedBox(width: 5),
          Text(
            'Continue with E-mail',
            style: ThemeData().textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
