import 'package:ptc2/models/Category.dart';
import 'package:ptc2/models/item.dart';

class CategoryCach {
  CategoryCach._internal();
  static final CategoryCach _instance = CategoryCach._internal();
  factory CategoryCach() {
    return _instance;
  }

  List<CategoryItem> categoryscahe = [];

  List<Item>? getItemforCategory(String category, String type) {
    int index = getIndexCategory(category);
    if (index == -1) return [];
    if (categoryscahe[index].items[type] == null) {
      fillItemList(type, index);
    }
    return categoryscahe[index].items[type];
  }

  int getIndexCategory(String category) {
    int index = -1;
    for (int i = 0; i < categoryscahe.length; i++) {
      if (categoryscahe[i].name == category) {
        index = i;
        break;
      }
    }
    return index;
  }

  void fillItemList(String type, int index) {
    switch (type) {
      case "low price":
        categoryscahe[index].items[type] = [];
        categoryscahe[index]
            .items[type]!
            .addAll(categoryscahe[index].items["general"]!);
        categoryscahe[index]
            .items[type]!
            .sort((a, b) => a.price.compareTo(b.price));
        break;
      case "hight price":
        categoryscahe[index].items[type] = [];
        categoryscahe[index]
            .items[type]!
            .addAll(categoryscahe[index].items["general"]!);
        categoryscahe[index]
            .items[type]!
            .sort((a, b) => b.price.compareTo(a.price));
        break;
      case "popular":
        categoryscahe[index].items[type] = [];
        categoryscahe[index]
            .items[type]!
            .addAll(categoryscahe[index].items["general"]!);
        categoryscahe[index]
            .items[type]!
            .sort((a, b) => b.numReviews.compareTo(a.numReviews));
        break;
      default:
        break;
    }
  }
}
