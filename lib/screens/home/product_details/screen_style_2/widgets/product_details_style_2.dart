import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/product_details/widgets/button_product.dart';
import 'package:ptc2/screens/home/product_details/widgets/price_product.dart';
import 'package:ptc2/screens/home/product_details/widgets/rateing_product_bar.dart';
import 'package:ptc2/screens/home/product_details/widgets/text_panel_details.dart';

class ProductDetailsStyle2 extends StatefulWidget {
  final Item item;
  const ProductDetailsStyle2({super.key, required this.item});

  @override
  State<ProductDetailsStyle2> createState() => _ProductDetailsStyle2State();
}

class _ProductDetailsStyle2State extends State<ProductDetailsStyle2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: Container(
        color: ColorManager.whiteColor,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            color: ColorManager.whiteColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: AppPadding.p10,
                      left: AppPadding.p10,
                      right: AppPadding.p10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(AppSize.s50),
                          topRight: Radius.circular(AppSize.s50)),
                      color: ColorManager.whiteColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p20, vertical: AppPadding.p30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.item.name,
                            style: StyleManager.h2_Semibold(
                                color: ColorManager.blackColor),
                          ),
                          PriceProduct(item: widget.item),
                          RateingProductBar(item: widget.item),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: AppPadding.p30),
                            child: Container(
                                color: ColorManager.primary1Color,
                                child: ButtonProduct(item: widget.item)),
                          ),
                          TextPanelDetails(item: widget.item),
                          const SizedBox(height: AppSize.s20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
