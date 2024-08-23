import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';

class SilverAppBarDefault extends StatefulWidget {
  final bool isBack;
  final bool isDiscont;
  final String titleBar;
  const SilverAppBarDefault(
      {super.key,
      required this.isDiscont,
      required this.titleBar,
      required this.isBack});

  @override
  State<SilverAppBarDefault> createState() => _SilverAppBarDefaultState();
}

class _SilverAppBarDefaultState extends State<SilverAppBarDefault> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      pinned: true,
      expandedHeight: widget.isDiscont ? AppSizeScreen.screenHeight / 3 : null,
      backgroundColor: widget.isDiscont
          ? ColorManager.secoundColor
          : ColorManager.whiteColor,
      leading: widget.isBack
          ? InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
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
            )
          : Container(),
      title: Text(
        widget.titleBar,
        style: StyleManager.body01_Regular(color: ColorManager.blackColor),
      ),
      flexibleSpace: widget.isDiscont
          ? FlexibleSpaceBar(
              background: SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      AssetsManager.shoppingDiscontImage,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: AppPadding.p30,
                          left: AppPadding.p100,
                          right: AppPadding.p10),
                      child: Text(
                        "25%",
                        style: StyleManager.h1_Bold(
                            color: ColorManager.whiteColor,
                            fontsize: AppSize.s110),
                      ),
                    )
                  ],
                ),
              ),
            )
          : null,
    );
  }
}
