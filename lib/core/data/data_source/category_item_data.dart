import 'package:ptc2/core/data/data_source/data_configuration/category_cach.dart';
import 'package:ptc2/core/data/data_source/items_data.dart';
import 'package:ptc2/models/category.dart';

String path = "lib/core/data/data_source/images";
List<CategoryItem> categorys = [
  CategoryItem(
      id: 1,
      name: "Fruits",
      details: "Fresh & Organic",
      image: "$path/apple.png",
      items: CategoryItem.setItemsCategory(itemsApp, "Fruits")),
  CategoryItem(
      id: 2,
      name: "Vegetables",
      details: "Organic",
      image: "$path/Broccoli.png",
      items: CategoryItem.setItemsCategory(itemsApp, "Vegetables")),
  CategoryItem(
      id: 3,
      name: "Dairy",
      details: "Organic",
      image: "$path/Cheese.png",
      items: CategoryItem.setItemsCategory(itemsApp, "Dairy")),
  CategoryItem(
      id: 4,
      name: "Tea",
      details: "Fresh & Organic",
      image: "$path/GreenTea.png",
      items: CategoryItem.setItemsCategory(itemsApp, "Tea")),
  CategoryItem(
      id: 5,
      name: "Juice",
      details: "Fresh & Organic",
      image: "$path/OrangeJuice.png",
      items: CategoryItem.setItemsCategory(itemsApp, "Juice")),
  CategoryItem(
      id: 6,
      name: "Meat",
      details: "Organic",
      image: "$path/OrganicChickenBreast.png",
      items: CategoryItem.setItemsCategory(itemsApp, "Meat")),
];
CategoryCach categoryCach = CategoryCach();
