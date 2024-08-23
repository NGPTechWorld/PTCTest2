import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/widgets/silver_app_bar_default.dart';

class OredersScreen extends StatefulWidget {
  const OredersScreen({super.key});

  @override
  State<OredersScreen> createState() => _OredersScreenState();
}

class _OredersScreenState extends State<OredersScreen> {
  List<String> barTitle = [StringManager.currentText, StringManager.pastText];
  int? indexCurrent;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    indexCurrent = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: Container(
        color: ColorManager.whiteColor,
        child: CustomScrollView(
          slivers: [
            const SilverAppBarDefault(
              isDiscont: false,
              titleBar: StringManager.titleBarOrderText,
              isBack: false,
            ),
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
                    const SizedBox(
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
                  itemCount: myOrders.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    if ((indexCurrent == 0 &&
                            myOrders[index].isSuccess == false) ||
                        (indexCurrent == 1 &&
                            myOrders[index].isSuccess == true)) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: AppPadding.p16),
                                  child: Image.asset(
                                    AssetsManager.imageiconImage,
                                    width: AppSize.s50,
                                    height: AppSize.s50,
                                    fit: BoxFit.contain,
                                    color: ColorManager.primary6Color,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order ${index + 1}',
                                      style: StyleManager.body02_Medium(
                                          color: ColorManager.blackColor),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: AppPadding.p4),
                                      child: Text(
                                        '\$${myOrders[index].totalPrice.toStringAsFixed(2)}',
                                        style: StyleManager.body02_Regular(
                                            color: ColorManager.blackColor),
                                      ),
                                    ),
                                    indexCurrent == 1
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: AppPadding.p20,
                                            ),
                                            child: Text(
                                              myCart.get_dateOrder(),
                                              style:
                                                  StyleManager.body02_Regular(
                                                      color: ColorManager
                                                          .primary5Color),
                                            ),
                                          )
                                        : Container(),
                                  ],
                                ),
                                const Spacer(),
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
                                                  style: StyleManager
                                                      .body02_Regular(
                                                          color: ColorManager
                                                              .primary5Color),
                                                ),
                                                TextSpan(
                                                  text: '#${myCart.id}',
                                                  style: StyleManager
                                                      .body02_Regular(
                                                          color: ColorManager
                                                              .blackColor),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    indexCurrent == 1
                                        ? Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: AppPadding.p10,
                                                vertical: AppPadding.p2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppSize.s6),
                                                color: ColorManager.firstColor
                                                    .withAlpha(40)),
                                            child: Center(
                                              child: Text(
                                                StringManager.successText,
                                                style:
                                                    StyleManager.label_Medium(
                                                        color: ColorManager
                                                            .firstColor),
                                              ),
                                            ),
                                          )
                                        : Container(),
                                  ],
                                )
                              ],
                            ),
                            indexCurrent == 1
                                ? Container()
                                : Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(
                                            AppPadding.p10),
                                        child: Image.asset(
                                            AssetsManager.orderImage),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:
                                                    StringManager.yourOrderText,
                                                style:
                                                    StyleManager.h3_Regular()),
                                            TextSpan(
                                                text: '\n' +
                                                    StringManager
                                                        .areonthewayText,
                                                style: StyleManager.h3_Bold())
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                            Divider(
                              color: ColorManager.primary3Color,
                              thickness: 1,
                            ),
                          ],
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: AppSizeScreen.screenHeight / 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
