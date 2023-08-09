import 'package:flutter/material.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          visualDensity: const VisualDensity(vertical: -2, horizontal: 1)),
      onPressed: () {},
      child: const Text(
        'I forgot my password',
        style: TextStyle(
          color: Color(0xff686873),
        ),
      ),
    );
  }
}
