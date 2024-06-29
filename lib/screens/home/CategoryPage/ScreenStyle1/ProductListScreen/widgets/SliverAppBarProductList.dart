import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/Category.dart';
import 'package:ptc2/widgets/CartIcon.dart';

class SliverAppBarProductList extends StatefulWidget {
  final CategoryItem categoryItem;
  const SliverAppBarProductList({Key? key, required this.categoryItem})
      : super(key: key);

  @override
  State<SliverAppBarProductList> createState() =>
      _SliverAppBarProductListState();
}

class _SliverAppBarProductListState extends State<SliverAppBarProductList> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      backgroundColor: ColorManager.whiteColor,
      stretch: true,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
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
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: AppPadding.p10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: AppSizeScreen.screenWidth / 1.8,
              child: Text(
                widget.categoryItem.name,
                style:
                    StyleManager.body01_Regular(color: ColorManager.blackColor),
              ),
            ),
            SizedBox(
              height: 50,
              width: 40,
              child: Image.asset(
                AssetsManager.searchImage,
                height: 30,
                color: ColorManager.blackColor,
              ),
            ),
            CartIcon(
              color: ColorManager.blackColor,
            ),
          ],
        ),
      ),
    );
  }
}
