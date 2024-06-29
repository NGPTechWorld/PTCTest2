import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/screens/Orders/OredersScreen.dart';
import 'package:ptc2/screens/home/CategoryPage/ScreenStyle1/CategoryScreen.dart';
import 'package:ptc2/screens/home/CategoryPage/ScreenStyle2/CategoryScreenStyle2.dart';
import 'package:ptc2/screens/home/GroceryHome/GroceryHomeScreen.dart';
import 'package:ptc2/screens/home/widgets/BottomNavicationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexPage = 0;
  List<Widget> _pages = [
    const GroceryHomeScreen(),
    const CategoryScreen(),
    const CategoryScreenStyle2(),
    OredersScreen()
  ];
  void setIndex(int index) {
    setState(() {
      indexPage = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: indexPage,
            children: _pages,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: CurvedNavigationBarCustom(
                  color: ColorManager.ButtomBarColor,
                  backgroundColor: ColorManager.transparentColor,
                  buttonBackgroundColor: ColorManager.primary7Color,
                  onTap: (value) {
                    _pages = [
                      const GroceryHomeScreen(),
                      const CategoryScreen(),
                      const CategoryScreenStyle2(),
                      OredersScreen()
                    ];
                    setState(() {
                      indexPage = value;
                    });
                  },
                  index: indexPage,
                  items: [
                    Image.asset(
                      indexPage == 0
                          ? AssetsManager.homeActiveImage
                          : AssetsManager.homeImage,
                      color: indexPage == 0 ? null : ColorManager.primary7Color,
                    ),
                    Image.asset(
                      indexPage == 1
                          ? AssetsManager.categoryActiveImage
                          : AssetsManager.categoryImage,
                      color: indexPage == 1 ? null : ColorManager.primary7Color,
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
                )),
          ),
        ],
      ),
    );
  }
}
