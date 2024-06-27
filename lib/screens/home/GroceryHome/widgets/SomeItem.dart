import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/categoryItemData.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/core/data/data_source/itemsData.dart';
import 'package:ptc2/models/item.dart';

class SomeItem extends StatelessWidget {
  const SomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> itemFilter = [];
    itemFilter.addAll(
        categoryCach.getItemforCategory("Fruits", "general") as Iterable<Item>);
    itemFilter.addAll(
        categoryCach.getItemforCategory("Tea", "general") as Iterable<Item>);
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        mainAxisSpacing: AppPadding.p10,
        crossAxisSpacing: AppPadding.p10,
      ),
      itemCount: itemFilter.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(AppPadding.p10),
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
                          itemFilter[index].images![0],
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
                            child: CircleAvatar(
                              radius: AppSize.s30, 
                              backgroundColor:
                                  ColorManager.firstColor, 
                              child: Icon(
                                Icons.add, 
                                color: ColorManager.whiteColor, 
                                size: AppSize.s16, 
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
                            text: itemFilter[index].get_price() + "\n",
                            style: StyleManager.body01_Semibold(
                              color: ColorManager.blackColor,
                            ),
                          ),
                          TextSpan(
                            text: itemFilter[index].name,
                            style: StyleManager.label_Regular(
                              color: ColorManager.primary6Color,
                            ),
                          ),
                          TextSpan(
                            text: "\n${itemFilter[index].category}",
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
        );
      },
    );
  }
}
