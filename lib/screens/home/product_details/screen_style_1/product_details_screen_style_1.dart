import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/product_details/screen_style_1/widgets/SilverAppBarProductDetailsStyle1.dart';
import 'package:ptc2/screens/home/product_details/screen_style_1/widgets/product_details_style_1.dart';

class ProductDetailsScreenStyle1 extends StatefulWidget {
  final Item item;

  const ProductDetailsScreenStyle1({super.key, required this.item});

  @override
  State<ProductDetailsScreenStyle1> createState() =>
      _ProductDetailsScreenStyle1State();
}

class _ProductDetailsScreenStyle1State
    extends State<ProductDetailsScreenStyle1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.whiteColor,
        child: CustomScrollView(
          slivers: [
            SilverAppBarProductDetailsStyle1(item: widget.item),
            SliverFillRemaining(
              child: ProductDetailsStyle1(item: widget.item),
            ),
          ],
        ),
      ),
    );
  }
}
