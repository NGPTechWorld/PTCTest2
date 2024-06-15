import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ptc2/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}
