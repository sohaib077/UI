import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit tracker/views/continue with email view/custom_app_bar_title.dart';
import 'package:ui/habit tracker/views/continue with email view/custom_back_arrow.dart';
import 'package:ui/habit%20tracker/views/continue%20with%20email%20view/widgets/continue_with_email_view_body.dart';

import '../../../core/shared_methods.dart';

class ContinueWithEmailView extends StatelessWidget {
  const ContinueWithEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        unfocus(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const CustomAppBarTitle(text: 'Continue with E-mail'),
          leading: const CustomBackArrow(),
          titleSpacing: 0,
          elevation: .5,
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: kMaxPadding),
          child: ContinueWithEmailViewBody(),
        ),
      ),
    );
  }
}
