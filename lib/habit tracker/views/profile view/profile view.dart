import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/habit%20tracker/views/profile%20view/cubits/profile_cubit.dart';
import ' widgets/profile_view_body.dart';
import '../../../core/shared_methods.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: Scaffold(
        appBar: customEmptyAppBar(),
        body: const ProfileViewBody(),
      ),
    );
  }
}
