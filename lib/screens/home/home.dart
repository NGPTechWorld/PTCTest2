import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ptc2/core/const/const.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/home/widgets/discountSlider.dart';
import 'package:ptc2/screens/home/widgets/sliverAppBar.dart';
import 'package:ptc2/screens/home/widgets/searchbar.dart';
import 'package:ptc2/widgets/CurvedBottomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> itemsApp1 = List<String>.generate(20, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    print("hajar");
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              Sliverappbar(),
              SliverToBoxAdapter(
                child: SizedBox(
                    height: AppSizeWidget.discountSize,
                    child: DiscountSlider()),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CurvedBottomNavigationBar(),
          ),
        ],
      ),
    );
  }
}
