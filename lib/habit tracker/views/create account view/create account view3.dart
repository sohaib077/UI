import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/shared_methods.dart';

class CreateAccountView3 extends StatelessWidget {
  const CreateAccountView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Create Account'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMaxPadding),
        child: Column(),
      ),
    );
  }
}
