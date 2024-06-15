import 'package:flutter/material.dart';

class Item {
  String name, details, quantity;
  double price;
  bool isDiscount;
  int? discount;
  int numReviews;
  double rate;
  List<Image>? images;

  Item({
    required this.name,
    required this.details,
    required this.quantity,
    required this.price,
    required this.numReviews,
    required this.rate,
    required this.isDiscount,
    this.discount,
    this.images,
  });

  double get_price() {
    if (isDiscount)
      return price - (price * discount!);
    else
      return price;
  }
}
