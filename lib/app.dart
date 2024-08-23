import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptc2/core/cart/cart_controller.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/OnBoardring/OnBoardring.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    AppSizeScreen.screenSize = MediaQuery.of(context).size;
    AppSizeScreen.screenWidth = AppSizeScreen.screenSize.width;
    AppSizeScreen.screenHeight = AppSizeScreen.screenSize.height;

    final cartController = Get.put(CartController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      color: ColorManager.firstDarkColor,
      home: const Onboardring(),
    );
  }
}
