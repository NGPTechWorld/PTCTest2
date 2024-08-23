import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/Home/GroceryHome/widgets/DiscountSlider.dart';
import 'package:ptc2/screens/Home/GroceryHome/widgets/SliverAppBarHome.dart';
import 'package:ptc2/screens/home/GroceryHome/widgets/InfoCard.dart';
import 'package:ptc2/screens/home/GroceryHome/widgets/Recommended.dart';
import 'package:ptc2/screens/home/GroceryHome/widgets/SomeItem.dart';

class GroceryHomeScreen extends StatefulWidget {
  const GroceryHomeScreen({super.key});

  @override
  State<GroceryHomeScreen> createState() => _GroceryHomeScreenState();
}

class _GroceryHomeScreenState extends State<GroceryHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.whiteColor,
        child: CustomScrollView(
          slivers: [
            const SliverAppBarHome(),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(AppPadding.p10),
                child: SizedBox(
                    height: AppSizeWidget.cardSize, child: DiscountSlider()),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppPadding.p10, horizontal: AppPadding.p20),
                child: Text(
                  StringManager.recommendedText,
                  style: StyleManager.body01_Regular(fontsize: AppSize.s30),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
                child: SizedBox(
                    height: AppSizeScreen.screenHeight / 3.7,
                    child: RecommendedList()),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(AppPadding.p10),
                child:
                    SizedBox(height: AppSizeWidget.cardSize, child: InfoCard()),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppPadding.p10, horizontal: AppPadding.p20),
                child: Text(
                  StringManager.someItemText,
                  style: StyleManager.body01_Regular(fontsize: AppSize.s30),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
                child: SomeItem(),
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
