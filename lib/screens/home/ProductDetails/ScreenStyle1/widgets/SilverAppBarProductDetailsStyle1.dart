import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';

class SilverAppBarProductDetailsStyle1 extends StatefulWidget {
  final Item item;
  const SilverAppBarProductDetailsStyle1({super.key, required this.item});

  @override
  State<SilverAppBarProductDetailsStyle1> createState() =>
      _SilverAppBarProductDetailsStyle1State();
}

class _SilverAppBarProductDetailsStyle1State
    extends State<SilverAppBarProductDetailsStyle1> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: ColorManager.whiteColor,
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
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            widget.item.name,
            style: StyleManager.body01_Regular(color: ColorManager.blackColor),
          ),
        ),
      ),
    );
  }
}
