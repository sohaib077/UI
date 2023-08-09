import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/shared_methods.dart';
import 'package:ui/habit%20tracker/views/create%20account%20view/cubits/create_account_cubit.dart';
import 'package:ui/habit%20tracker/views/create%20account%20view/widgets/create_account_view2_body.dart';

class CreateAccountView2 extends StatelessWidget {
  const CreateAccountView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateAccountCubit(),
      child: GestureDetector(
        onTap: () {
          unfocus(context);
        },
        child: Scaffold(
          appBar: customAppBar('Create Account'),
          body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: kMaxPadding),
            child: CreateAccountView2Body(),
          ),
        ),
      ),
    );
  }
}
