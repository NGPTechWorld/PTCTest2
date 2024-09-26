import 'package:get/get.dart';
import 'package:ptc2/core/cart/cart_controller.dart';
import 'package:ptc2/models/card_money.dart';
import 'package:ptc2/models/location_address.dart';
import 'package:ptc2/models/item.dart';

CartController cartController = Get.find();

class CartItem {
  static int cntId = 0;
  int id;
  double subTotalPrice, totalPrice, deliveryPrice;
  Map<Item, int> items;
  LocationAddress delivery;
  CardMoney? cardMoney;
  bool isSuccess;
  DateTime dateOrdered;
  CartItem({
    required this.items,
    required this.delivery,
    this.cardMoney,
    required this.isSuccess,
    required this.dateOrdered,
  })  : id = ++cntId,
        deliveryPrice = 2.0,
        totalPrice = 0,
        subTotalPrice = 0;

  void addItemToCart(Item item) {
    if (items[item] != null)
      items[item] = 1 + items[item]!;
    else
      items[item] = 1;
    subTotalPrice += item.get_finalPrice();
    if (item.isDiscount) cartController.isDiscont.value = true;
    totalPrice = subTotalPrice + deliveryPrice;
  }

  void removeItemToCart(Item item) {
    if (items[item]! > 1)
      items[item] = items[item]! - 1;
    else
      items.remove(item);
    subTotalPrice = (item.get_finalPrice() - subTotalPrice).abs();
    if (item.isDiscount) cartController.isDiscont.value = false;

    totalPrice = subTotalPrice + deliveryPrice;
  }

  String get_dateOrder() {
    return "${dateOrdered.day}/${dateOrdered.month}/${dateOrdered.year}";
  }
}
