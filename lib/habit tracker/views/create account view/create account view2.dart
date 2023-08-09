import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/shared_methods.dart';

class CreateAccountView2 extends StatelessWidget {
  const CreateAccountView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){unfocus(context);},
      child: Scaffold(
        appBar: customAppBar('Create Account'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMaxPadding),
          child: Column(),
        ),
      ),
    );
  }
}
