import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit%20tracker/views/create%20account%20view/cubits/create_account_cubit.dart';

import '../../../../core/styles.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.icon,
    required this.text,
    required this.index,
  });

  final String icon;
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountCubit, CreateAccountState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            CreateAccountCubit.get(context).changeSelectedItem(index);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kMaxRadius),
              border: Border.all(
                width: 1,
                color: CreateAccountCubit.get(context).gender == index ? kBlue100 : kGrey1,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: kMaxPadding),
                Text(icon, style: Styles.iconTextStyle),
                const SizedBox(height: kMaxPadding),
                Text(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        );
      },
    );
  }
}
