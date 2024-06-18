import 'package:flutter/material.dart';
import 'package:ptc2/screens/Home/CategoryPage/widgets/SliverAppBarCategory.dart';
import 'package:ptc2/screens/home/CategoryPage/widgets/CategorysGridView.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarCategory(),
          SliverToBoxAdapter(
            child: CategorysGridView(),
          ),
        ],
      ),
    );
  }
}
