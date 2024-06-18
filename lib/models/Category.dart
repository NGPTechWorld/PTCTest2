// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ptc2/models/item.dart';

class CategoryItem {
  int id;
  String name;
  String image;
  String details;
  Map<String, List<Item>> items;
  CategoryItem({
    required this.id,
    required this.name,
    required this.details,
    required this.image,
    required this.items,
  });

  static Map<String, List<Item>> setItemsCategory(
      List<Item> items, String category) {
    List<Item> itemsCategory = [];
    for (Item item in items) {
      if (item.category == category) itemsCategory.add(item);
    }
    Map<String, List<Item>> itemsmap = {"general": itemsCategory};
    return itemsmap;
  }
}
