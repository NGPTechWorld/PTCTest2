import 'package:flutter/material.dart';
import 'package:ptc2/core/const/const.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';

class SliverAppBarCategory extends StatefulWidget {
  const SliverAppBarCategory({super.key});

  @override
  _SliverAppBarCategoryState createState() => _SliverAppBarCategoryState();
}

class _SliverAppBarCategoryState extends State<SliverAppBarCategory> {
  String? selectedValue;
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      expandedHeight: AppSizeScreen.screenHeight / 3,
      backgroundColor: ColorManager.firstColor,
      stretch: true,
      title: Padding(
        padding: const EdgeInsets.only(top: AppPadding.p10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              StringManager.titleSilverAppBar,
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
              Text(
                StringManager.title1SilverAppBar2,
                style: StyleManager.h1_Regular(
                    color: ColorManager.primary1Color, fontsize: AppSize.s50),
              ),
              Text(
                StringManager.title2SilverAppBa2,
                style: StyleManager.h1_Bold(
                    color: ColorManager.primary1Color, fontsize: AppSize.s50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
