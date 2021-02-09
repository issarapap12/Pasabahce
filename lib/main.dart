import 'package:flutter/material.dart';
import 'package:newflutter/screens/bookMark.dart';
import 'package:newflutter/screens/cart.dart';
import 'package:newflutter/screens/mainPage.dart';
import 'package:newflutter/screens/menu.dart';
import 'package:newflutter/screens/my_service.dart';
import 'package:newflutter/screens/setting.dart';
import 'package:newflutter/screens/splash.dart';
import 'package:newflutter/screens/splash2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.black),
      home: Splash2(),
    );
  }
}
