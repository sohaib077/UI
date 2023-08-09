import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import '../../../../core/styles.dart';
import '../../continue with email view/widgets/custom_next_button.dart';
import '../models/gridview item model.dart';
import 'custom_grid_view.dart';

class CreateAccountView3Body extends StatelessWidget {
  const CreateAccountView3Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<GridViewItemModel> items = [
      GridViewItemModel(icon: '💧‍', text: 'Drink water'),
      GridViewItemModel(icon: '🏃🏻‍♀️‍', text: 'Run'),
      GridViewItemModel(icon: '📖‍', text: 'Read books'),
      GridViewItemModel(icon: '🧘🏻‍♀️‍', text: 'Meditate'),
      GridViewItemModel(icon: '🧑🏻‍💻‍‍', text: 'Study'),
      GridViewItemModel(icon: '📕‍', text: 'Journal'),
      GridViewItemModel(icon: '🌿‍‍', text: 'Water plant'),
      GridViewItemModel(icon: '😴‍', text: 'Sleep'),
    ];
    return Stack(
      children: [
        // const SizedBox(height: 20),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 20),
              Text("Choose your first habits", style: Styles.titleTextStyle),
              SizedBox(height: 3),
              Text(
                "You may add more habits later",
                style: Styles.subTitleTextStyle,
              ),
              SizedBox(height: 16),
              CustomGridView(items: items),
              SizedBox(height: 100),
              // const Spacer(),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            color: kBackground1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomNextButton(
                onPressed: () {
                  // navigateTo(context, const CreateAccountView3());
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// CustomNextButton(
//   onPressed: () {
//     // navigateTo(context, const CreateAccountView3());
//   },
// ),
// const SizedBox(height: 20),
