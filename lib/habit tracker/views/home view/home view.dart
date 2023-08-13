import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/core/shared_methods.dart';
import 'package:ui/habit%20tracker/views/home%20view/cubits/home_cubit.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        appBar: customEmptyAppBar(),
        body: const HomeViewBody(),
      ),
    );
  }
}