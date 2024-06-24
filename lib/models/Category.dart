import 'dart:convert';

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
    Map<String, List<Item>> itemsMap = {"general": itemsCategory};
    return itemsMap;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'details': details,
      'items': items,
    };
  }

  factory CategoryItem.fromMap(Map<String, dynamic> map) {
    return CategoryItem(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      details: map['details'] as String,
      items: Map<String, List<Item>>.from(
        (map['items'] as Map<String, List<Item>>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryItem.fromJson(String source) =>
      CategoryItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CategoryItem(id: $id, name: $name, image: $image, details: $details, items: ${items.toString()})';
  }

  static void showListCategorys(List<CategoryItem> category) {
    for (CategoryItem cate in category) print(cate.toString());
  }
}
