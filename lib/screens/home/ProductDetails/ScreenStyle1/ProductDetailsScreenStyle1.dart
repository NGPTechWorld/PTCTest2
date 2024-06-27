import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/ProductDetails/widgets/ButtonProduct.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle1/widgets/ProductDetailsStyle1.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle1/widgets/SilverAppBarProductDetailsStyle1.dart';

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
      bottomNavigationBar: Container(
        color: ColorManager.primary1Color,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p18, vertical: AppPadding.p20),
          child: ButtonProduct(item: widget.item),
        ),
      ),
    );
  }
}
