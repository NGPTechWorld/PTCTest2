import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptc2/core/cart/cart_controller.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/data/data_source/itemsData.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/home/ProductDetails/ScreenStyle1/ProductDetailsScreenStyle1.dart';
import 'package:ptc2/widgets/ScaffoldMessengerApp.dart';

class RecommendedList extends StatelessWidget {
  RecommendedList({super.key});
  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: itemsApp.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
          child: InkWell(
            onTap: () {
              Get.to(ProductDetailsScreenStyle1(item: itemsApp[index]));
            },
            child: Container(
              width: AppSizeScreen.screenWidth / 2.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s18),
                color: ColorManager.primary1Color,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: Center(
                      child: Image.asset(
                        itemsApp[index].images![0],
                        width: AppSize.s100,
                        height: AppSize.s100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Divider(
                    color: ColorManager.primary3Color,
                    thickness: 1,
                    indent: AppSize.s20,
                    endIndent: AppSize.s20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p10),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: itemsApp[index].name,
                              style: StyleManager.body01_Semibold(
                                color: ColorManager.primary6Color,
                              ),
                            ),
                            TextSpan(
                              text: "\n${itemsApp[index].category}",
                              style: StyleManager.body02_Medium(
                                color: ColorManager.primary5Color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: Stack(
                      children: [
                        Container(
                          height: AppSize.s24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppSize.s12),
                            color: ColorManager.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color:
                                    ColorManager.blackColor.withOpacity(0.03),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    itemsApp[index].quantity,
                                    style: StyleManager.label_Regular(
                                        color: ColorManager.primary4Color),
                                  ),
                                ),
                                const SizedBox(
                                  width: AppSize.s4,
                                ),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    itemsApp[index].get_price(),
                                    style: StyleManager.body02_Semibold(
                                        color: ColorManager.primary6Color),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: -15,
                          child: SizedBox(
                            height: AppSize.s24,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  myCart.addItemToCart(itemsApp[index]);
                                  cartController.increment(myCart.items.length);
                                  ScaffoldMessengerApp.showSnackbar(
                                      context,
                                      StringManager.addItemCartText,
                                      ColorManager.greenColor);
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
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
