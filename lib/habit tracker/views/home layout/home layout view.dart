import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/habit tracker/views/home layout/custom_add_floating_action_button.dart';
import 'package:ui/habit tracker/views/home layout/custom_bottom_navigation_bar.dart';
import 'package:ui/habit%20tracker/views/home%20layout/cubits/home_layout_cubit.dart';

class HomeLayoutView extends StatelessWidget {
  const HomeLayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
        builder: (context, state) {
          return Scaffold(
            body: HomeLayoutCubit.get(context)
                .pages[HomeLayoutCubit.get(context).currentPageIndex],
            bottomNavigationBar: CustomBottomNavigationBar(
              currentPageIndex: HomeLayoutCubit.get(context).currentPageIndex,
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: const CustomAddFloatingActionButton(),
          );
        },
      ),
    );
  }
}
