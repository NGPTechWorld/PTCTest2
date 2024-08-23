import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptc2/core/data/data_source/categoryItemData.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/home/CategoryPage/ScreenStyle1/ProductListScreen/ProductListScreen.dart';

class CategorysGridView extends StatefulWidget {
  const CategorysGridView({super.key});

  @override
  State<CategorysGridView> createState() => _CategorysGridViewState();
}

class _CategorysGridViewState extends State<CategorysGridView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppSize.s4,
          crossAxisSpacing: AppSize.s4,
          childAspectRatio: 0.90,
        ),
        itemCount: categorys.length,
        itemBuilder: (context, index) {
          final category = categorys[index];
          return InkWell(
            onTap: () {
              Get.to(ProductListScreen(categoryItem: categorys[index]));
            },
            child: Card(
              elevation: 0,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: AppPadding.p8),
                  child: Image.asset(
                    category.image,
                    height: AppSize.s100,
                    width: AppSize.s100,
                    fit: BoxFit.cover,
                  ),
                ),
                Divider(
                  color: ColorManager.primary3Color,
                  thickness: 1,
                  indent: AppSize.s30,
                  endIndent: AppSize.s30,
                ),
                Text(
                  category.name,
                  style: StyleManager.body02_Semibold(),
                ),
                Text(
                  category.details,
                  style: StyleManager.body02_Medium(
                      color: ColorManager.primary5Color),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
