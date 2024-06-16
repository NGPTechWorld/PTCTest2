import 'package:flutter/material.dart';
import 'package:ptc2/screens/category/widgets/sliverAppBar2.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Sliverappbar2(),
        ],
      ),
    );
  }
}
