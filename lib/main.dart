import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ptc2/app.dart';
import 'package:ptc2/core/data/data_source/categoryItemData.dart';
import 'package:ptc2/core/data/data_source/data_configuration/categoryCach.dart';
import 'package:ptc2/models/Category.dart';
import 'package:ptc2/models/item.dart';

void main() {
  categoryCach.categoryscahe.addAll(categorys);
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}
