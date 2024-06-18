import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/Home/GroceryHome/widgets/DiscountSlider.dart';
import 'package:ptc2/screens/Home/GroceryHome/widgets/SliverAppBarHome.dart';
import 'package:ptc2/screens/home/GroceryHome/widgets/Recommended.dart';

class GroceryHomeScreen extends StatefulWidget {
  const GroceryHomeScreen({super.key});

  @override
  State<GroceryHomeScreen> createState() => _GroceryHomeScreenState();
}

class _GroceryHomeScreenState extends State<GroceryHomeScreen> {
  final List<String> itemsApp1 = List<String>.generate(20, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarHome(),
          SliverToBoxAdapter(
            child: SizedBox(
                height: AppSizeWidget.discountSize, child: DiscountSlider()),
          ),
        ],
      ),
    );
  }
}
