import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptc2/core/cart/cart_controller.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/shopping_cart/screens/check_out/check_out_screen.dart';
import 'package:ptc2/widgets/scaffold_messenger_app.dart';
import 'package:ptc2/widgets/silver_app_bar_default.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.whiteColor,
        child: CustomScrollView(
          slivers: [
            Obx(
              () => SilverAppBarDefault(
                isBack: true,
                isDiscont: cartController.isDiscont.value,
                titleBar: StringManager.shoppingCartText +
                    " (${myCart.items.length})",
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.p18),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    List<Item> keys = myCart.items.keys.toList();
                    List<int> values = myCart.items.values.toList();
                    return Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            keys[index].images![0],
                            width: AppSize.s50,
                            height: AppSize.s50,
                            fit: BoxFit.contain,
                          ),
                          title: Text(
                            keys[index].name,
                            style: StyleManager.body02_Medium(
                                color: ColorManager.blackColor),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: AppPadding.p4),
                            child: Text(
                              '\$' +
                                  keys[index]
                                      .get_finalPrice()
                                      .toStringAsFixed(2),
                              style: StyleManager.body02_Regular(
                                  color: ColorManager.blackColor),
                            ),
                          ),
                          trailing: SizedBox(
                            width: AppSizeScreen.screenWidth / 3.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      myCart.removeItemToCart(keys[index]);
                                      cartController
                                          .decrement(myCart.items.length);
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: AppSize.s20,
                                    backgroundColor: ColorManager.primary1Color,
                                    child: Icon(
                                      Icons.remove,
                                      color: ColorManager.blackColor,
                                      size: AppSize.s16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppPadding.p10),
                                  child: Text(
                                    values[index].toString(),
                                    style: StyleManager.body02_Medium(
                                        color: ColorManager.blackColor),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      myCart.addItemToCart(keys[index]);
                                      cartController
                                          .increment(myCart.items.length);
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: AppSize.s20,
                                    backgroundColor: ColorManager.primary1Color,
                                    child: Icon(
                                      Icons.add,
                                      color: ColorManager.blackColor,
                                      size: AppSize.s16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: ColorManager.primary3Color,
                          thickness: 1,
                        ),
                      ],
                    );
                  },
                  itemCount: myCart.items.length,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorManager.primary1Color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s30),
            topRight: Radius.circular(AppSize.s30),
          ),
        ),
        height: AppSizeScreen.screenHeight / 3.5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.p40,
                bottom: AppPadding.p16,
                right: AppPadding.p40,
                top: AppPadding.p20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringManager.subTotalText,
                    style: StyleManager.body02_Regular(
                      color: ColorManager.primary5Color,
                    ),
                  ),
                  Text(
                    '\$' + myCart.subTotalPrice.toStringAsFixed(2),
                    style: StyleManager.body02_Medium(
                      color: ColorManager.blackColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.p40,
                bottom: AppPadding.p16,
                right: AppPadding.p40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringManager.deliveryText,
                    style: StyleManager.body02_Regular(
                      color: ColorManager.primary5Color,
                    ),
                  ),
                  Text(
                    myCart.items.isNotEmpty
                        ? '\$' + myCart.deliveryPrice.toStringAsFixed(2)
                        : '\$0',
                    style: StyleManager.body02_Medium(
                      color: ColorManager.blackColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.p40,
                right: AppPadding.p40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringManager.totalText,
                    style: StyleManager.body02_Regular(
                      color: ColorManager.primary5Color,
                    ),
                  ),
                  Text(
                    myCart.items.isNotEmpty
                        ? '\$' + myCart.totalPrice.toStringAsFixed(2)
                        : '\$0',
                    style: StyleManager.body02_Medium(
                      color: ColorManager.blackColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p20,
                vertical: AppPadding.p30,
              ),
              child: MaterialButton(
                color: ColorManager.firstColor,
                onPressed: () {
                  if (myCart.items.isNotEmpty) {
                    Get.to(const CheckoutScreen());
                  } else {
                    ScaffoldMessengerApp.showSnackbarError(context,
                        StringManager.faildText, ColorManager.secoundDarkColor);
                  }
                },
                height: AppSizeScreen.screenHeight / 14,
                minWidth: AppSizeScreen.screenWidth,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s20),
                ),
                child: Text(
                  StringManager.buttonShoppingText,
                  style: StyleManager.button1(
                    color: ColorManager.whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
