import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/discover%20view/widgets/discover_view_body.dart';

import '../../../core/shared_methods.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customEmptyAppBar(),
      body: DiscoverViewBody(),
    );
  }
}
