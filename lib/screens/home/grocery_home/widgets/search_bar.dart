import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';

class SearchTextBar extends StatelessWidget {
  const SearchTextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: StyleManager.body02_Medium(color: ColorManager.primary1Color),
      cursorColor: ColorManager.primary1Color,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: AppSize.s10),
          child: Image.asset(AssetsManager.searchImage),
        ),
        hintText: StringManager.searchHintSilverAppBar,
        hintStyle:
            StyleManager.body02_Medium(color: ColorManager.primary5Color),
        filled: true,
        fillColor: ColorManager.firstDarkColor,
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.transparentColor,
            ),
            borderRadius: BorderRadius.circular(AppSize.s26)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.transparentColor,
            ),
            borderRadius: BorderRadius.circular(AppSize.s26)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.transparentColor,
            ),
            borderRadius: BorderRadius.circular(AppSize.s26)),
      ),
    );
  }
}
