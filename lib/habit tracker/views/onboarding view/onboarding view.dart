import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit%20tracker/views/onboarding%20view/widgets/onboarding_view_body.dart';

import 'cubit/onboarding_cubit.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnboardingCubit(),
        child: const OnboardingViewBody(),
      ),
    );
  }
}
