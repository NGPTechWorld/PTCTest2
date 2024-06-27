import 'package:flutter/material.dart';

class Item {
  int id;
  String name, details, quantity;
  String category;
  double price;
  bool isDiscount;
  int discount;
  int numReviews;
  double rate;
  List<String>? images;

  Item({
    required this.id,
    required this.name,
    required this.category,
    required this.details,
    required this.quantity,
    required this.price,
    required this.numReviews,
    required this.rate,
    required this.isDiscount,
    required this.discount,
    this.images,
  });

  String get_priceDiscont() {
    double priceD = 0;
    if (isDiscount) {
      priceD = price - (price * (discount / 100));
      return '\$${priceD.toStringAsFixed(2)} OFF';
    } else {
      return "";
    }
  }

  String get_price() {
    return "\$${price.toStringAsFixed(2)}";
  }

  String get_discount() {
    return "$discount%";
  }

  @override
  String toString() {
    return 'Item(id: $id, name: $name, category: $category, details: $details, quantity: $quantity, price: ${get_price()}, isDiscount: $isDiscount, discount: ${get_discount()}, numReviews: $numReviews, rate: $rate, images: $images)';
  }
}
