import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/product_details/screen_style_3/widgets/product_details_style_3.dart';
import 'package:ptc2/screens/home/product_details/screen_style_3/widgets/silver_app_bar_product_details_style_3.dart';

class ProductDetailsScreenStyle3 extends StatefulWidget {
  final Item item;

  const ProductDetailsScreenStyle3({super.key, required this.item});

  @override
  State<ProductDetailsScreenStyle3> createState() =>
      _ProductDetailsScreenStyle3State();
}

class _ProductDetailsScreenStyle3State
    extends State<ProductDetailsScreenStyle3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.whiteColor,
        child: CustomScrollView(
          slivers: [
            SilverAppBarProductDetailsStyle3(item: widget.item),
            SliverFillRemaining(
              child: ProductDetailsStyle3(item: widget.item),
            ),
          ],
        ),
      ),
    );
  }
}
