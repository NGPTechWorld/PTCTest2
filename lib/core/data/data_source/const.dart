import 'package:flutter/material.dart';
import 'package:ptc2/models/CartItem.dart';
import 'package:ptc2/models/LocationAddress.dart';
import 'package:ptc2/models/CardMoney.dart';

ValueNotifier<List<CartItem>> cartNotifier = ValueNotifier<List<CartItem>>([
  CartItem(
      subTotalPrice: 500,
      items: {},
      delivery: LocationAddress(
          name: "name", street: "street", city: "city", details: "details"),
      cardMoney: CardMoney(
          holderName: "holderName",
          cardNumber: "cardNumber",
          expDate: "",
          cvc: 50,
          money: 500),
      statu: ""),
]);
void addItemToCart(CartItem item) {
  final currentCart = cartNotifier.value;
  final updatedCart = List<CartItem>.from(currentCart)..add(item);
  cartNotifier.value = updatedCart;
}

List<CartItem> cart = [
  CartItem(
      subTotalPrice: 500,
      items: {},
      delivery: LocationAddress(
          name: "name", street: "street", city: "city", details: "details"),
      cardMoney: CardMoney(
          holderName: "holderName",
          cardNumber: "cardNumber",
          expDate: "",
          cvc: 50,
          money: 500),
      statu: ""),
];
List<LocationAddress> locations = [
  LocationAddress(
      name: 'Home', street: '36 green way', city: 'Sunamganj', details: ''),
  LocationAddress(
      name: 'Office',
      street: 'Medical road, Halal lab',
      city: 'Sunamganj',
      details: ''),
];
List<CardMoney> cardsMoney = [];
