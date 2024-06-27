import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';

class TextPanelDetails extends StatelessWidget {
  final Item item;
  const TextPanelDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringManager.detailsText,
          style: StyleManager.body01_Regular(color: ColorManager.primary7Color),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.p10),
          child: Text(
            item.details,
            style: StyleManager.body01_Regular(
                color: ColorManager.textDetailsColor),
          ),
        ),
        ExpansionTile(
          tilePadding: EdgeInsets.symmetric(horizontal: 0),
          title: Text(
            StringManager.nutritionalFactsText,
            style:
                StyleManager.body01_Regular(color: ColorManager.primary7Color),
          ),
          children: [
            Text(
              StringManager.nutritionalFactsText,
              style: StyleManager.body01_Regular(
                  color: ColorManager.primary5Color),
            ),
          ],
        ),
        ExpansionTile(
          tilePadding: EdgeInsets.symmetric(horizontal: 0),
          title: Text(
            StringManager.reviewsText,
            style:
                StyleManager.body01_Regular(color: ColorManager.primary7Color),
          ),
          children: [
            Text(
              StringManager.reviewsText,
              style: StyleManager.body01_Regular(
                  color: ColorManager.primary5Color),
            ),
          ],
        ),
      ],
    );
  }
}
