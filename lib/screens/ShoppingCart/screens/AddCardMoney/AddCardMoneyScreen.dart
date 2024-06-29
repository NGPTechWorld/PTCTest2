import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/CartItem.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/ShoppingCart/screens/Checkout/CheckoutScreen.dart';
import 'package:ptc2/widgets/SilverAppBarDefault.dart';

class AddCardMoneyScreen extends StatefulWidget {
  const AddCardMoneyScreen({super.key});

  @override
  State<AddCardMoneyScreen> createState() => _AddCardMoneyScreenState();
}

class _AddCardMoneyScreenState extends State<AddCardMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.whiteColor,
        child: CustomScrollView(
          slivers: [
            SilverAppBarDefault(
              isBack: true,
              isDiscont: false,
              titleBar: StringManager.titleBarAddCardText,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p18),
                child: Column(
                  children: [
                    TextField(
                      cursorColor: ColorManager.firstDarkColor,
                      decoration: InputDecoration(
                        labelText: StringManager.cardholdernameText,
                        labelStyle: StyleManager.body02_Semibold(
                            color: ColorManager.primary5Color),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorManager.primary5Color, width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorManager.firstDarkColor, width: 2),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: AppPadding.p24),
                      child: TextField(
                        cursorColor: ColorManager.firstDarkColor,
                        decoration: InputDecoration(
                          labelText: StringManager.cardNumberText,
                          labelStyle: StyleManager.body02_Semibold(
                              color: ColorManager.primary5Color),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorManager.primary5Color, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorManager.firstDarkColor, width: 2),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            cursorColor: ColorManager.firstDarkColor,
                            decoration: InputDecoration(
                              labelText: StringManager.expDateText,
                              labelStyle: StyleManager.body02_Semibold(
                                  color: ColorManager.primary5Color),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorManager.primary5Color,
                                    width: 1),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorManager.firstDarkColor,
                                    width: 2),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AppSize.s30,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: ColorManager.firstDarkColor,
                            decoration: InputDecoration(
                              labelText: StringManager.cvcText,
                              labelStyle: StyleManager.body02_Semibold(
                                  color: ColorManager.primary5Color),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorManager.primary5Color,
                                    width: 1),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorManager.firstDarkColor,
                                    width: 2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
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
                  myOrders.add(myCart);
                  myCart = CartItem(
                      items: {},
                      delivery: myLocation,
                      cardMoney: cardsMoney[0],
                      isSuccess: false,
                      dateOrdered: DateTime.now());
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                height: AppSizeScreen.screenHeight / 14,
                minWidth: AppSizeScreen.screenWidth,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s20),
                ),
                child: Text(
                  StringManager.makePaymentText,
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
