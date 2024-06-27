import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/ProductDetails/widgets/ButtonProduct.dart';
import 'package:ptc2/screens/home/ProductDetails/widgets/PriceProduct.dart';
import 'package:ptc2/screens/home/ProductDetails/widgets/RateingProductBar.dart';
import 'package:ptc2/screens/home/ProductDetails/widgets/TextPanelDetails.dart';

class ProductDetailsStyle1 extends StatefulWidget {
  final Item item;
  const ProductDetailsStyle1({super.key, required this.item});

  @override
  State<ProductDetailsStyle1> createState() => _ProductDetailsStyle1State();
}

class _ProductDetailsStyle1State extends State<ProductDetailsStyle1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: ColorManager.whiteColor,
          child: Column(
            children: [
              SizedBox(
                height: AppSizeScreen.screenHeight / 3.5,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: Center(
                    child: Image.asset(
                      widget.item.images![0],
                      height: AppSizeScreen.screenHeight / 5,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(AppSize.s50),
                        topRight: Radius.circular(AppSize.s50)),
                    color: ColorManager.primary1Color,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(AppPadding.p20),
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
                        TextPanelDetails(item: widget.item),
                        SizedBox(
                            height: AppPadding.p20), // Adjust spacing as needed
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
