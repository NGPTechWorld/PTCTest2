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

  double get_price() {
    if (isDiscount)
      return price - (price * (discount! / 100));
    else
      return price;
  }

  String get_discount() {
    return "$discount%";
  }
}
