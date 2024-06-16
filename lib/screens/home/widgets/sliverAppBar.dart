import 'package:flutter/material.dart';
import 'package:ptc2/core/const/const.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/home/widgets/searchbar.dart';

class Sliverappbar extends StatefulWidget {
  const Sliverappbar({super.key});

  @override
  _SliverappbarState createState() => _SliverappbarState();
}

class _SliverappbarState extends State<Sliverappbar> {
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
      flexibleSpace: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            children: [SearchTextBar()],
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p10),
          color: ColorManager.firstColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(StringManager.titleDropDowne1SilverAppBar,
                      style: StyleManager.label_Medium(
                          color: ColorManager.primary3Color)),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedValue,
                      hint: Text(
                        'Select an item',
                        style: TextStyle(color: ColorManager.primary1Color),
                      ),
                      dropdownColor: ColorManager.firstColor,
                      iconEnabledColor: ColorManager.primary1Color,
                      items: items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(color: ColorManager.primary1Color),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
