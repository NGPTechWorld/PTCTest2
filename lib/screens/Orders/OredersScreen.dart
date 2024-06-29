import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/ShoppingCart/screens/AddCardMoney/AddCardMoneyScreen.dart';
import 'package:ptc2/widgets/SilverAppBarDefault.dart';

class OredersScreen extends StatefulWidget {
  const OredersScreen({super.key});

  @override
  State<OredersScreen> createState() => _OredersScreenState();
}

class _OredersScreenState extends State<OredersScreen> {
  List<String> barTitle = [StringManager.currentText, StringManager.pastText];
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
                isDiscont: false, titleBar: StringManager.titleBarOrderText),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppPadding.p12, horizontal: AppPadding.p24),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          indexCurrent = 0;
                        });
                      },
                      child: Container(
                        width: AppSizeScreen.screenWidth / 2.2,
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16,
                            vertical: AppPadding.p16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: 0 == indexCurrent
                                ? ColorManager.whiteColor
                                : ColorManager.primary4Color,
                          ),
                          borderRadius: BorderRadius.circular(AppSize.s30),
                          color: 0 == indexCurrent
                              ? ColorManager.secoundDarkColor
                              : ColorManager.whiteColor,
                        ),
                        child: Center(
                          child: Text(
                            StringManager.currentText,
                            style: StyleManager.body02_Semibold(
                                color: 0 == indexCurrent
                                    ? ColorManager.whiteColor
                                    : ColorManager.primary5Color),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppSize.s10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          indexCurrent = 1;
                        });
                      },
                      child: Container(
                        width: AppSizeScreen.screenWidth / 2.6,
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16,
                            vertical: AppPadding.p16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: 1 == indexCurrent
                                ? ColorManager.whiteColor
                                : ColorManager.primary4Color,
                          ),
                          borderRadius: BorderRadius.circular(AppSize.s30),
                          color: 1 == indexCurrent
                              ? ColorManager.secoundDarkColor
                              : ColorManager.whiteColor,
                        ),
                        child: Center(
                          child: Text(
                            StringManager.pastText,
                            style: StyleManager.body02_Semibold(
                                color: 1 == indexCurrent
                                    ? ColorManager.whiteColor
                                    : ColorManager.primary5Color),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: AppPadding.p16),
                                child: Image.asset(
                                  AssetsManager.imageiconImage,
                                  width: AppSize.s50,
                                  height: AppSize.s50,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    keys[index].name,
                                    style: StyleManager.body02_Medium(
                                        color: ColorManager.blackColor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: AppPadding.p4),
                                    child: Text(
                                      '\$' +
                                          keys[index]
                                              .get_finalPrice()
                                              .toStringAsFixed(2),
                                      style: StyleManager.body02_Regular(
                                          color: ColorManager.blackColor),
                                    ),
                                  ),
                                  Text(
                                    myCart.get_dateOrder(),
                                    style: StyleManager.body02_Regular(
                                        color: ColorManager.blackColor),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(AppPadding.p16),
                                    child: Column(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'ID: ',
                                                style:
                                                    StyleManager.body02_Regular(
                                                        color: ColorManager
                                                            .primary5Color),
                                              ),
                                              TextSpan(
                                                text: '#${myCart.id}',
                                                style:
                                                    StyleManager.body02_Regular(
                                                        color: ColorManager
                                                            .blackColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppPadding.p10,
                                        vertical: AppPadding.p2),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(AppSize.s6),
                                        color: ColorManager.firstColor
                                            .withAlpha(40)),
                                    child: Center(
                                      child: Text(
                                        StringManager.successText,
                                        style: StyleManager.label_Medium(
                                            color: ColorManager.firstColor),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Divider(
                            color: ColorManager.primary3Color,
                            thickness: 1,
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: myCart.items.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
