import 'package:flutter/material.dart';

class ContinuingText extends StatelessWidget {
  const ContinuingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FittedBox(
        child: Text(
          'By continuing you agree Terms of Services & Privacy Policy ',
          style: ThemeData().textTheme.bodySmall!.copyWith(
                fontSize: 12,
                color: const Color(0xffAFB4FF),
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
