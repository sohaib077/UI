import 'package:flutter/material.dart';
import 'package:ui/core/shared_methods.dart';
import 'package:ui/habit%20tracker/views/continue%20with%20email%20view/widgets/custom_next_button.dart';
import 'package:ui/habit%20tracker/views/create%20account%20view/create%20account%20view3.dart';
import 'package:ui/habit%20tracker/views/create%20account%20view/models/gridview%20item%20model.dart';
import 'package:ui/habit%20tracker/views/create%20account%20view/widgets/custom_grid_view.dart';

import '../../../../core/styles.dart';

class CreateAccountView2Body extends StatelessWidget {
  const CreateAccountView2Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<GridViewItemModel> items = [
      GridViewItemModel(icon: '🤷🏻‍♂‍', text: 'Male'),
      GridViewItemModel(icon: '🙋🏻‍♀‍', text: 'Female'),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text("Choose your gender", style: Styles.titleTextStyle),
        const SizedBox(height: 16),
        const CustomGridView(items: items),
        const Spacer(),
        CustomNextButton(
          onPressed: () {
            navigateTo(context, const CreateAccountView3());
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
