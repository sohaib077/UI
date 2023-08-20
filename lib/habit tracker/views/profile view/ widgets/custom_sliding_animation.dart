import 'package:flutter/material.dart';

class CustomSlidingAnimation extends StatelessWidget {
  const CustomSlidingAnimation({
    super.key,
    required this.animation, required this.child, required this.controller,
  });

  final Animation<Offset> animation;
  final AnimationController controller;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return SlideTransition(
          position: animation,
          child: child,
        );
      },
    );
  }
}
