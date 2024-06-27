import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle2/widgets/ProductDetailsStyle2.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle2/widgets/SilverAppBarProductDetailsStyle2.dart';

class ProductDetailsScreenStyle2 extends StatefulWidget {
  final Item item;

  const ProductDetailsScreenStyle2({super.key, required this.item});

  @override
  State<ProductDetailsScreenStyle2> createState() =>
      _ProductDetailsScreenStyleState();
}

class _ProductDetailsScreenStyleState
    extends State<ProductDetailsScreenStyle2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.whiteColor,
        child: CustomScrollView(
          slivers: [
            SilverAppBarProductDetailsStyle2(item: widget.item),
            SliverFillRemaining(
              child: ProductDetailsStyle2(item: widget.item),
            ),
          ],
        ),
      ),
    );
  }
}
