import 'package:ptc2/models/CardMoney.dart';
import 'package:ptc2/models/LocationAddress.dart';
import 'package:ptc2/models/item.dart';

class CartItem {
  static int cntId = 0;
  int id;
  double subTotalPrice;
  Map<Item, int> items;
  LocationAddress delivery;
  CardMoney cardMoney;
  String statu;
  CartItem({
    required this.subTotalPrice,
    required this.items,
    required this.delivery,
    required this.cardMoney,
    required this.statu,
  }) : id = ++cntId;
}
