import 'package:flutter/material.dart';
import 'package:ui/core/shared_methods.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/onboarding%20view.dart';
import 'package:ui/habit%20tracker/views/splash%20view/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      // navigateAndFinish(context, const OnboardingView());
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingView(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(),
      body: SplashViewBody(),
    );
  }
}
