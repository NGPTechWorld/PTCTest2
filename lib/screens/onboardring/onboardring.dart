import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/screens/Home/HomeScreen.dart';

class Onboardring extends StatefulWidget {
  const Onboardring({super.key});

  @override
  State<Onboardring> createState() => _OnboardringState();
}

class _OnboardringState extends State<Onboardring> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p40, vertical: AppMargin.m32),
        color: ColorManager.firstColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: AppMargin.m24),
              child: Text(
                StringManager.title,
                style: StyleManager.h1_Bold(color: ColorManager.primary1Color),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: AppMargin.m24),
              child: Text(
                StringManager.decription,
                style:
                    StyleManager.h4_Medium(color: ColorManager.primary3Color),
              ),
            ),
            Image.asset(AssetsManager.sliderImage),
            SizedBox(
              height: AppSizeScreen.screenHeight / 7,
            ),
            Container(
              margin: const EdgeInsets.only(top: AppMargin.m10),
              alignment: Alignment.center,
              child: Image.asset(AssetsManager.imageiconImage),
            ),
            SizedBox(
              height: AppSizeScreen.screenHeight / 8,
            ),
            Center(
              child: SizedBox(
                width: AppSizeScreen.screenHeight / 1.5,
                height: AppSizeScreen.screenHeight / 12,
                child: TextButton(
                    style: StyleManager.buttonStyle(),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HomeScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringManager.button,
                            style: StyleManager.body01_Semibold(
                                color: ColorManager.primary7Color),
                          ),
                          Transform.rotate(
                            angle: 3.14,
                            child: Icon(
                              Icons.arrow_back,
                              color: ColorManager.primary7Color,
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
