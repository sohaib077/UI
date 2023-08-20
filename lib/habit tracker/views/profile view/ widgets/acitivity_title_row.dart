import 'package:flutter/material.dart';
import 'package:ui/core/assets_data.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/custom_icon_button.dart';

import '../../../../core/styles.dart';

class AcitivityTitleRow extends StatelessWidget {
  const AcitivityTitleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("Showing last month activity",
            style: Styles.mediumWeightTextStyle),
        Spacer(),
        CustomIconButton(icon: AssetsData.filterIcon),
      ],
    );
  }
}
