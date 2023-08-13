import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/home%20view/widgets/home_view_body.dart';

import ' widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileViewBody(),
    );
  }
}
