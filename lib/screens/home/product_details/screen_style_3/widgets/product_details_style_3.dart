import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/product_details/widgets/button_product.dart';
import 'package:ptc2/screens/home/product_details/widgets/price_product.dart';
import 'package:ptc2/screens/home/product_details/widgets/text_panel_details.dart';

class ProductDetailsStyle3 extends StatefulWidget {
  final Item item;
  const ProductDetailsStyle3({super.key, required this.item});

  @override
  State<ProductDetailsStyle3> createState() => _ProductDetailsStyle3State();
}

class _ProductDetailsStyle3State extends State<ProductDetailsStyle3> {
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
                    color: ColorManager.whiteColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p20, vertical: AppPadding.p30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: AppSizeScreen.screenHeight / 3.5,
                                child: Padding(
                                  padding: const EdgeInsets.all(AppPadding.p8),
                                  child: Image.asset(
                                    widget.item.images![0],
                                    width: AppSizeScreen.screenWidth / 2,
                                    height: AppSizeScreen.screenHeight / 5,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: AppPadding.p20,
                                    horizontal: AppPadding.p8),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s20),
                                    color: ColorManager.primary1Color),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(AssetsManager.heartImage),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: AppPadding.p20),
                                      child: Image.asset(
                                          AssetsManager.moreSquareImage),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          PriceProduct(item: widget.item),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppPadding.p30),
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
