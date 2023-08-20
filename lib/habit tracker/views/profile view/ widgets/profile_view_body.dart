import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/profile view/ widgets/profile_achievement_column.dart';
import 'package:ui/habit tracker/views/profile view/ widgets/profile_app_bar.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/app_bar_separator.dart';

import '../cubits/profile_cubit.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const ProfileAppBar(),
              const AppBarSeparator(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kMaxPadding),
                child: ProfileCubit.get(context).profileLists[ProfileCubit.get(context).currentIndex],
              ),
            ],
          ),
        );
      },
    );
  }
}
