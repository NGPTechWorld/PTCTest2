import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ptc2/app.dart';
import 'package:ptc2/core/data/data_source/category_item_data.dart';
import 'package:ptc2/core/data/data_source/const.dart';

void main() {
  //Fack totalPric defalut Orders
  myOrders[0].totalPrice = 175.5;
  myOrders[1].totalPrice = 11.5;
  myOrders[2].totalPrice = 15.9;
  categoryCach.categoryscahe.addAll(categorys);

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}
