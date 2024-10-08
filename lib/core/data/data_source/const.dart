import 'package:flutter/material.dart';
import 'package:ptc2/models/cart_item.dart';
import 'package:ptc2/models/location_address.dart';
import 'package:ptc2/models/card_money.dart';

CartItem myCart = CartItem(
    items: {},
    delivery: myLocation,
    isSuccess: false,
    dateOrdered: DateTime.now());

List<CartItem> myOrders = [
  CartItem(
      dateOrdered: DateTime.now(),
      items: {},
      delivery: myLocation,
      isSuccess: false),
  CartItem(
      dateOrdered: DateTime.now(),
      items: {},
      delivery: myLocation,
      isSuccess: true),
  CartItem(
      dateOrdered: DateTime.now(),
      items: {},
      delivery: myLocation,
      isSuccess: true),
];

LocationAddress myLocation = locations[0];

void addItemToCart(CartItem item) {
  final currentCart = cartNotifier.value;
  final updatedCart = List<CartItem>.from(currentCart)..add(item);
  cartNotifier.value = updatedCart;
}

List<LocationAddress> locations = [
  LocationAddress(
      name: 'Home', street: '36 green way', city: 'Sunamganj', details: ''),
  LocationAddress(
      name: 'Office',
      street: 'Medical road, Halal lab',
      city: 'Sunamganj',
      details: ''),
];
List<CardMoney> cardsMoney = [
  CardMoney(
      holderName: "holderName",
      cardNumber: "cardNumber",
      expDate: "",
      cvc: 50,
      money: 500),
];

ValueNotifier<List<CartItem>> cartNotifier = ValueNotifier<List<CartItem>>([
  CartItem(
      dateOrdered: DateTime.now(),
      items: {},
      delivery: LocationAddress(
          name: "name", street: "street", city: "city", details: "details"),
      cardMoney: CardMoney(
          holderName: "holderName",
          cardNumber: "cardNumber",
          expDate: "",
          cvc: 50,
          money: 500),
      isSuccess: true),
]);
