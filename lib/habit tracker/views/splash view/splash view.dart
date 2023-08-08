import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/splash%20view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(),
      body: SplashViewBody(),
    );
  }
}
