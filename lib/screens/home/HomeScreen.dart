import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/Home/GroceryHome/widgets/DiscountSlider.dart';
import 'package:ptc2/screens/home/CategoryPage/CategoryScreen.dart';
import 'package:ptc2/screens/home/GroceryHome/GroceryHomeScreen.dart';
import 'package:ptc2/screens/home/widgets/BottomNavicationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexPage = 0;
  final List<Widget> _pages = [
    GroceryHomeScreen(),
    CategoryScreen(),
  ];
  void setIndex(int index) {
    setState(() {
      indexPage = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: indexPage,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBarCustom(
        color: ColorManager.primary3Color,
        backgroundColor: ColorManager.transparentColor,
        buttonBackgroundColor: ColorManager.primary7Color,
        onTap: (value) {
          setState(() {
            indexPage = value;
          });
        },
        index: indexPage,
        items: [
          Image.asset(
            AssetsManager.homeImage,
            color: indexPage == 0
                ? ColorManager.primary1Color
                : ColorManager.primary7Color,
          ),
          Image.asset(
            AssetsManager.categoryImage,
            color: indexPage == 1
                ? ColorManager.primary1Color
                : ColorManager.primary7Color,
          ),
          Image.asset(
            AssetsManager.heartImage,
            color: indexPage == 2
                ? ColorManager.primary1Color
                : ColorManager.primary7Color,
          ),
          Image.asset(
            AssetsManager.more_verticalImage,
            color: indexPage == 3
                ? ColorManager.primary1Color
                : ColorManager.primary7Color,
          )
        ],
      ),
    );
  }
}
