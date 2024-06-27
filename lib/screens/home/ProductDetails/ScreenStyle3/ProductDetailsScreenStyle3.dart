import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle2/widgets/ProductDetailsStyle2.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle2/widgets/SilverAppBarProductDetailsStyle2.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle3/widgets/ProductDetailsStyle3.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle3/widgets/SilverAppBarProductDetailsStyle3.dart';

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
