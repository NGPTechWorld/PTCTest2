import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';

class PriceProduct extends StatelessWidget {
  final Item item;
  const PriceProduct({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppPadding.p16),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: item.get_price(),
                    style: StyleManager.h1_Bold(
                      fontsize: AppSize.s16,
                      color: ColorManager.firstColor,
                    )),
                TextSpan(
                    text: "/" + item.quantity,
                    style: StyleManager.body01_Regular(
                      color: ColorManager.firstColor,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
            child: item.isDiscount
                ? Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppPadding.p3, horizontal: AppPadding.p18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.s70),
                      color: ColorManager.firstColor,
                    ),
                    child: Text(
                      item.get_priceDiscont(),
                      style: StyleManager.body02_Regular(
                          color: ColorManager.whiteColor),
                    ),
                  )
                : Container(),
          )
        ],
      ),
    );
  }
}
