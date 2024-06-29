import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/ShoppingCart/screens/AddCardMoney/AddCardMoneyScreen.dart';
import 'package:ptc2/widgets/SilverAppBarDefault.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int indexCurrent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: Container(
        color: ColorManager.whiteColor,
        child: CustomScrollView(
          slivers: [
            SilverAppBarDefault(
                isBack: true,
                isDiscont: false,
                titleBar: StringManager.shoppingCartText +
                    " (${myCart.items.length})"),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: AppSizeScreen.screenHeight / 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p24),
                    child: Text(
                      StringManager.deliveryAddressText,
                      style: StyleManager.body01_Regular(
                          color: ColorManager.blackColor),
                    ),
                  ),
                  GridView.builder(
                    itemCount: locations.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 4,
                      mainAxisSpacing: AppPadding.p10,
                      crossAxisSpacing: AppPadding.p10,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p24),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              indexCurrent = index;
                              myLocation = locations[index];
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppSize.s12),
                              border: Border.all(
                                  width: 2,
                                  color: indexCurrent == index
                                      ? ColorManager.secoundDarkColor
                                      : ColorManager.primary2Color),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(AppPadding.p18),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        locations[index].name,
                                        style: StyleManager.body02_Regular(),
                                      ),
                                      Text(
                                        locations[index].getLocation(),
                                        style: StyleManager.body02_Semibold(),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(AppPadding.p18),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      indexCurrent == index
                                          ? CircleAvatar(
                                              radius: AppSize.s12,
                                              backgroundColor:
                                                  ColorManager.secoundDarkColor,
                                              child: Icon(
                                                Icons.check,
                                                color: ColorManager.blackColor,
                                                size: AppSize.s16,
                                              ),
                                            )
                                          : Container(),
                                      Text(
                                        StringManager.editText,
                                        style: StyleManager.label_Medium(
                                            color: ColorManager.firstColor),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p24),
                    child: Container(
                      height: AppSizeScreen.screenHeight / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: ColorManager.secoundDarkColor,
                                width: 1,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: AppSize.s12,
                              backgroundColor: ColorManager.whiteColor,
                              child: Icon(
                                Icons.add,
                                color: ColorManager.secoundDarkColor,
                                size: AppSize.s16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppPadding.p8),
                            child: Text(
                              StringManager.addNewAddressText,
                              style: StyleManager.body02_Regular(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: ColorManager.whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p20,
            vertical: AppPadding.p30,
          ),
          child: MaterialButton(
            color: ColorManager.firstColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddCardMoneyScreen()));
            },
            height: AppSizeScreen.screenHeight / 14,
            minWidth: AppSizeScreen.screenWidth,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s20),
            ),
            child: Text(
              StringManager.buttonAddCardText,
              style: StyleManager.button1(
                color: ColorManager.whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
