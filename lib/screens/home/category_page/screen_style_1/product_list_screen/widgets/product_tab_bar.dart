import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/category_item_data.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/category.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/home/category_page/screen_style_1/product_list_screen/widgets/product_grid_view.dart';

class ProductTabBar extends StatefulWidget {
  final CategoryItem categoryItem;
  const ProductTabBar({super.key, required this.categoryItem});

  @override
  State<ProductTabBar> createState() => _ProductTabBarState();
}

class _ProductTabBarState extends State<ProductTabBar> {
  List<Item> item = [];
  List<String> filterItems = ['general', 'low price', 'hight price', 'popular'];
  int indexCurrent = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSizeWidget.tabSize,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filterItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      indexCurrent = index;
                      item = categoryCach.getItemforCategory(
                          widget.categoryItem.name, filterItems[indexCurrent])!;
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: index == indexCurrent
                            ? ColorManager.whiteColor
                            : ColorManager.primary4Color,
                      ),
                      borderRadius: BorderRadius.circular(AppSize.s20),
                      color: index == indexCurrent
                          ? ColorManager.secoundDarkColor
                          : ColorManager.whiteColor,
                    ),
                    child: Center(
                      child: Text(
                        filterItems[index],
                        style: StyleManager.body02_Semibold(
                            color: index == indexCurrent
                                ? ColorManager.whiteColor
                                : ColorManager.primary5Color),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        ProductGridView(
            items: item.isEmpty
                ? widget.categoryItem.items[filterItems[indexCurrent]]!
                : item),
      ],
    );
  }
}
