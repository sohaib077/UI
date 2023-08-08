import 'package:flutter/material.dart';
import 'package:swipe_back_detector/swipe_back_detector.dart';

// ============================ N A V I G A T I O N S ======================================

// void navigateTo(context, widget) => Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => widget,
//       ),
//     );
//
// void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(
//           builder: (context) => widget,
//         ), (route) {
//       return false;
//     });

void navigateTo(BuildContext context, Widget page,
    {double x = 1.0, double y = 0.0}) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = Offset(x, y);
        const end = Offset.zero;
        const curve = Curves.ease;
        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SwipeBackDetector(
          child: SlideTransition(
            position: animation.drive(tween),
            child: child,
          ),
        );
      },
    ),
  );
}

void navigateAndFinish(context, widget, {double x = 1.0, double y = 0.0}) =>
    Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => widget,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final begin = Offset(x, y);
            const end = Offset.zero;
            const curve = Curves.ease;
            final tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SwipeBackDetector(
              child: SlideTransition(
                position: animation.drive(tween),
                child: child,
              ),
            );
          },
        ), (route) {
      return false;
    });

// =============================================================================================


void unfocus(context) {
  FocusScope.of(context).unfocus();
}
