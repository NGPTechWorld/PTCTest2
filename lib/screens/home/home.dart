import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/home/widgets/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: AppSizeScreen.screenHeight / 3,
            backgroundColor: ColorManager.firstColor,
            stretch: true,
            title: Padding(
              padding: EdgeInsets.only(top: AppPadding.p20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringManager.titleSilverAppBar,
                    style: StyleManager.h2_Semibold(
                        color: ColorManager.primary1Color),
                  ),
                  Container(
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
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: ColorManager.secoundColor,
                                borderRadius: BorderRadius.circular(12)),
                            constraints: BoxConstraints(
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
            flexibleSpace: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      child: SearchTextBar(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
