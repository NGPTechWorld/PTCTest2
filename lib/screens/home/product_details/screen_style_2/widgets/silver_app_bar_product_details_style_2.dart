import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';

class SilverAppBarProductDetailsStyle2 extends StatefulWidget {
  final Item item;
  const SilverAppBarProductDetailsStyle2({Key? key, required this.item})
      : super(key: key);

  @override
  State<SilverAppBarProductDetailsStyle2> createState() =>
      _SilverAppBarProductDetailsStyle2State();
}

class _SilverAppBarProductDetailsStyle2State
    extends State<SilverAppBarProductDetailsStyle2> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      expandedHeight: AppSizeScreen.screenHeight / 3,
      stretch: false,
      backgroundColor: ColorManager.whiteColor,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
          child: Center(
            child: CircleAvatar(
              radius: AppSize.s30,
              backgroundColor: ColorManager.whiteColor,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: ColorManager.blackColor,
                size: AppSize.s10,
              ),
            ),
          ),
        ),
      ),
      title: Container(),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(),
      ),
      flexibleSpace: Center(
        child: Container(
          color: ColorManager.whiteColor,
          child: SizedBox(
            height: AppSizeScreen.screenHeight / 3.5,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Center(
                child: Container(
                  width: AppSizeScreen.screenHeight / 3.5,
                  height: AppSizeScreen.screenHeight / 3.5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManager.primary2Color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    child: Image.asset(
                      widget.item.images![0],
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
