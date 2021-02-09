import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:newflutter/screens/bookMark.dart';
import 'package:newflutter/screens/cart.dart';
import 'package:newflutter/screens/mainPage.dart';
import 'package:newflutter/screens/menu.dart';
import 'package:newflutter/screens/my_service.dart';
import 'package:newflutter/screens/setting.dart';
import 'package:newflutter/screens/splash.dart';
import 'package:newflutter/screens/splash2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: false,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pasabahce',
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        home: Splash2(),
      ),
    );
  }
}

// class MyApp extends StatefulWidget {
//   MyApp({Key key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // theme: ThemeData(primaryColor: Colors.black),
//       home: Splash2(),
//     );
//   }
// }
