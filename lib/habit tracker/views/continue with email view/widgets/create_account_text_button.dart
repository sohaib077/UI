import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';

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
          onPressed: () {},
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
