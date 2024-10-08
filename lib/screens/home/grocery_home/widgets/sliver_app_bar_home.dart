import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/location_address.dart';
import 'package:ptc2/screens/home/grocery_home/widgets/search_bar.dart';
import 'package:ptc2/widgets/cart_icon.dart';

class SliverAppBarHome extends StatefulWidget {
  const SliverAppBarHome({super.key});

  @override
  _SliverAppBarHomeState createState() => _SliverAppBarHomeState();
}

class _SliverAppBarHomeState extends State<SliverAppBarHome> {
  String? selectedValue = myLocation.getLocation();
  String? selectedValue2;
  final List<String> items = [
    '1 ${StringManager.listDropDownText}',
    '2 ${StringManager.listDropDownText}',
    '3 ${StringManager.listDropDownText}',
    '4 ${StringManager.listDropDownText}',
    '5 ${StringManager.listDropDownText}'
  ];
  ValueNotifier<int> cartItemCount = ValueNotifier<int>(0);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: false,
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
            CartIcon(
              color: ColorManager.whiteColor,
            ),
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
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
          color: ColorManager.firstColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(StringManager.titleDropDowne1SilverAppBar,
                        style: StyleManager.label_Medium(
                            color: ColorManager.primary3Color)),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedValue,
                        hint: Text(
                          StringManager.hintDropDownText,
                          style: TextStyle(color: ColorManager.primary1Color),
                        ),
                        dropdownColor: ColorManager.firstColor,
                        iconEnabledColor: ColorManager.primary1Color,
                        items: locations.map((LocationAddress location) {
                          return DropdownMenuItem<String>(
                            value: location.getLocation(),
                            child: Text(
                              location.getLocation(),
                              style:
                                  TextStyle(color: ColorManager.primary1Color),
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(StringManager.titleDropDowne2SilverAppBar,
                      style: StyleManager.label_Medium(
                          color: ColorManager.primary3Color)),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedValue2,
                      hint: Text(
                        StringManager.selectText,
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
                          selectedValue2 = newValue;
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
