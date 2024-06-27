import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/ProductDetails/widgets/RateingProductBar.dart';

class SilverAppBarProductDetailsStyle3 extends StatefulWidget {
  final Item item;
  const SilverAppBarProductDetailsStyle3({Key? key, required this.item})
      : super(key: key);

  @override
  State<SilverAppBarProductDetailsStyle3> createState() =>
      _SilverAppBarProductDetailsStyle3State();
}

class _SilverAppBarProductDetailsStyle3State
    extends State<SilverAppBarProductDetailsStyle3> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      expandedHeight: AppSizeScreen.screenHeight / 3,
      backgroundColor: ColorManager.whiteColor,
      stretch: true,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: AppPadding.p8),
          child: Center(
            child: CircleAvatar(
              radius: AppSize.s30,
              backgroundColor: ColorManager.primary1Color,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: ColorManager.blackColor,
                size: AppSize.s10,
              ),
            ),
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: AppPadding.p10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "",
              style:
                  StyleManager.h2_Semibold(color: ColorManager.primary1Color),
            ),
            SizedBox(
              height: 50,
              width: 40,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    AssetsManager.cartImage,
                    height: 30,
                    color: ColorManager.blackColor,
                  ),
                  Positioned(
                    left: AppSize.s14,
                    bottom: AppSize.s20,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: ColorManager.secoundColor,
                          borderRadius: BorderRadius.circular(12)),
                      constraints: const BoxConstraints(
                          minWidth: AppSize.s24, maxHeight: AppSize.s24),
                      child: Center(
                        child: Text(
                          StringManager.numCartSilverAppBar,
                          style: StyleManager.body02_Semibold(
                              color: ColorManager.primary1Color),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      flexibleSpace: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.item.category,
                  style: StyleManager.h1_Regular(
                      color: ColorManager.blackColor, fontsize: AppSize.s50),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.item.name,
                  style: StyleManager.h1_Bold(
                      color: ColorManager.blackColor, fontsize: AppSize.s50),
                ),
              ),
              RateingProductBar(item: widget.item),
            ],
          ),
        ),
      ),
    );
  }
}
