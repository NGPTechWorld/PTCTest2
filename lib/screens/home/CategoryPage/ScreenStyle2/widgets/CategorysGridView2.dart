import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/categoryItemData.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/Category.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle3/ProductDetailsScreenStyle3.dart';

class CategorysGridView2 extends StatefulWidget {
  final CategoryItem category;
  const CategorysGridView2({super.key, required this.category});

  @override
  State<CategorysGridView2> createState() => _CategorysGridView2State();
}

class _CategorysGridView2State extends State<CategorysGridView2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: AppSize.s4,
          crossAxisSpacing: AppSize.s4,
          childAspectRatio: 2,
        ),
        itemCount: widget.category.items['general']?.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetailsScreenStyle3(
                          item: widget.category.items['general']![index])));
            },
            child: Card(
              elevation: 0,
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.s12),
                      color: ColorManager.container1Color,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppPadding.p30, horizontal: AppPadding.p20),
                      child: Image.asset(
                        widget.category.items['general']![index].images![0],
                        width: AppSizeScreen.screenHeight / 8,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                widget.category.items['general']![index].name,
                                style: StyleManager.h4_Bold(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Flexible(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  widget.category.items['general']![index]
                                      .details,
                                  style: StyleManager.body02_Medium(
                                      color: ColorManager.primary5Color),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
