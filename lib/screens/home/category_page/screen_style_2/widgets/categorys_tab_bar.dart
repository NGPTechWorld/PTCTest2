import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/category_item_data.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';

import 'package:ptc2/screens/home/category_page/screen_style_2/widgets/categorys_grid_view_2.dart';

class CategorysTabBar extends StatefulWidget {
  const CategorysTabBar({super.key});

  @override
  State<CategorysTabBar> createState() => _CategorysTabBarState();
}

class _CategorysTabBarState extends State<CategorysTabBar> {
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
            itemCount: categorys.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      indexCurrent = index;
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
                        categorys[index].name,
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
        CategorysGridView2(
          category: categorys[indexCurrent],
        )
      ],
    );
  }
}
