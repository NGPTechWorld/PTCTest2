import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';

class RateingProductBar extends StatelessWidget {
  final Item item;
  const RateingProductBar({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppPadding.p30),
      child: Row(
        children: [
          RatingBar.builder(
              initialRating: item.rate,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              glow: false,
              ignoreGestures: true,
              unratedColor: ColorManager.primary7Color,
              itemSize: AppSize.s18,
              itemCount: 5,
              itemPadding: EdgeInsets.only(left: AppPadding.p2),
              itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: ColorManager.secoundDarkColor,
                  ),
              onRatingUpdate: (rating) {}),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
            child: Text(
              "${item.numReviews} ${StringManager.reviewsText}",
              style: StyleManager.body02_Regular(
                  color: ColorManager.primary5Color),
            ),
          )
        ],
      ),
    );
  }
}
