import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/shared_methods.dart';
import 'package:ui/habit%20tracker/views/create%20account%20view/widgets/create_account_view1_body.dart';

class CreateAccountView1 extends StatelessWidget {
  const CreateAccountView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){unfocus(context);},
      child: Scaffold(
        appBar: customAppBar('Create Account'),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: kMaxPadding),
          child: CreateAccountView1Body(),
        ),
      ),
    );
  }
}
