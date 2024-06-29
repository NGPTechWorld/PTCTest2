import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle2/ProductDetailsScreenStyle2.dart';
import 'package:ptc2/widgets/ScaffoldMessengerApp.dart';

class ProductGridView extends StatefulWidget {
  final List<Item> items;
  const ProductGridView({super.key, required this.items});

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        mainAxisSpacing: AppPadding.p10,
        crossAxisSpacing: AppPadding.p10,
      ),
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(AppPadding.p10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetailsScreenStyle2(
                          item: widget.items[index])));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s18),
                color: ColorManager.primary1Color,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset(
                            widget.items[index].images![0],
                            width: AppSize.s100,
                            height: AppSize.s100,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: AppSize.s24,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  myCart.addItemToCart(widget.items[index]);
                                  ScaffoldMessengerApp.showSnackbar(
                                      context, StringManager.addItemCartText);
                                },
                                child: CircleAvatar(
                                  radius: AppSize.s30,
                                  backgroundColor: ColorManager.firstColor,
                                  child: Icon(
                                    Icons.add,
                                    color: ColorManager.whiteColor,
                                    size: AppSize.s16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppPadding.p10,
                        right: AppPadding.p10,
                        top: AppPadding.p10),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: widget.items[index].get_price() + "\n",
                              style: StyleManager.body01_Semibold(
                                color: ColorManager.blackColor,
                              ),
                            ),
                            TextSpan(
                              text: widget.items[index].name,
                              style: StyleManager.label_Regular(
                                color: ColorManager.primary6Color,
                              ),
                            ),
                            TextSpan(
                              text: "\n${widget.items[index].category}",
                              style: StyleManager.label_Regular(
                                color: ColorManager.primary5Color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
