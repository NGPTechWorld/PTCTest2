import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/Home/CategoryPage/widgets/SliverAppBarCategory.dart';
import 'package:ptc2/screens/home/CategoryPage/ScreenStyle2/widgets/CategorysTabBar.dart';

class CategoryScreenStyle2 extends StatefulWidget {
  const CategoryScreenStyle2({super.key});

  @override
  State<CategoryScreenStyle2> createState() => _CategoryScreenStyle2State();
}

class _CategoryScreenStyle2State extends State<CategoryScreenStyle2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: CustomScrollView(
        slivers: [
          const SliverAppBarCategory(),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(AppPadding.p10),
              child: CategorysTabBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: AppSizeScreen.screenHeight / 7,
            ),
          ),
        ],
      ),
    );
  }
}
