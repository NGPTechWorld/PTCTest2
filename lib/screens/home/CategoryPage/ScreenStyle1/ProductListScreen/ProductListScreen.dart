import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/Category.dart';
import 'package:ptc2/screens/home/CategoryPage/ScreenStyle1/ProductListScreen/widgets/ProductTabBar.dart';
import 'package:ptc2/screens/home/CategoryPage/ScreenStyle1/ProductListScreen/widgets/SliverAppBarProductList.dart';

class ProductListScreen extends StatefulWidget {
  final CategoryItem categoryItem;
  const ProductListScreen({Key? key, required this.categoryItem})
      : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBarProductList(
            categoryItem: widget.categoryItem,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p10),
              child: ProductTabBar(
                categoryItem: widget.categoryItem,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
