import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/habit%20tracker/views/discover%20view/widgets/discover_challenges_list_view_item.dart';

import '../../../../core/assets_data.dart';

class DiscoverLearningListViewItem extends StatelessWidget {
  const DiscoverLearningListViewItem({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 200,
        height: 132,
        decoration: customGradientDecoration(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              height: 80,
              width: 200,
              color: kBlue1.withOpacity(0.3),
              colorBlendMode: BlendMode.overlay,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kMinPadding + 2, horizontal: kNormPadding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AssetsData.folderIcon),
                  const SizedBox(width: 8),
                   Flexible(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
