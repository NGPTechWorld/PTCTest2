import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/onboardring/OnBoardring.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    AppSizeScreen.screenSize = MediaQuery.of(context).size;
    AppSizeScreen.screenWidth = AppSizeScreen.screenSize.width;
    AppSizeScreen.screenHeight = AppSizeScreen.screenSize.height;
    return MaterialApp(
      color: ColorManager.firstDarkColor,
      home: Onboardring(),
    );
  }
}
