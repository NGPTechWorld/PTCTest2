import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/home/category_page/screen_style_1/widgets/categorys_grid_view.dart';
import 'package:ptc2/screens/home/category_page/widgets/sliver_app_bar_category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBarCategory(),
          const SliverToBoxAdapter(
            child: CategorysGridView(),
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
