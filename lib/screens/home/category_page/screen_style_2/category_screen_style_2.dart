import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/home/category_page/screen_style_2/widgets/categorys_tab_bar.dart';
import 'package:ptc2/screens/home/category_page/widgets/sliver_app_bar_category.dart';

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
