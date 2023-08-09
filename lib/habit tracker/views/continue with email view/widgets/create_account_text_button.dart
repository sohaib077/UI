import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/shared_methods.dart';

import '../../create account view/create account view1.dart';

class CreateAccountTextButton extends StatelessWidget {
  const CreateAccountTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            navigateTo(context, const CreateAccountView1());
          },
          child: const Text(
            'Don’t have account? Let’s create!',
            style: TextStyle(
              color: kBlue100,
            ),
          ),
        ),
      ],
    );
  }
}
