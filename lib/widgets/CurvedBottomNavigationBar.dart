import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/widgets/BottomNavicationBar.dart';

class CurvedBottomNavigationBar extends StatefulWidget {
  const CurvedBottomNavigationBar({super.key});

  @override
  State<CurvedBottomNavigationBar> createState() =>
      _CurvedBottomNavigationBarState();
}

class _CurvedBottomNavigationBarState extends State<CurvedBottomNavigationBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CurvedNavigationBarCustom(
        color: ColorManager.primary3Color,
        backgroundColor: ColorManager.transparentColor,
        buttonBackgroundColor: ColorManager.primary7Color,
        onTap: (value) {
          setState(() {
            index = value;
            print(index);
          });
        },
        index: index,
        items: [
          Image.asset(
            AssetsManager.homeImage,
            color: index == 0
                ? ColorManager.primary1Color
                : ColorManager.primary7Color,
          ),
          Image.asset(
            AssetsManager.categoryImage,
            color: index == 1
                ? ColorManager.primary1Color
                : ColorManager.primary7Color,
          ),
          Image.asset(
            AssetsManager.heartImage,
            color: index == 2
                ? ColorManager.primary1Color
                : ColorManager.primary7Color,
          ),
          Image.asset(
            AssetsManager.more_verticalImage,
            color: index == 3
                ? ColorManager.primary1Color
                : ColorManager.primary7Color,
          )
        ],
      ),
    );
  }
}
