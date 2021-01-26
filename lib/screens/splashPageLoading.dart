import 'package:flutter/material.dart';
import 'package:newflutter/screens/register.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPageLoading extends StatefulWidget {
  @override
  _SplashPageLoadingState createState() => _SplashPageLoadingState();
}

class _SplashPageLoadingState extends State<SplashPageLoading> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: Register(),
      title: Text(
        'Loading',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      // image: Image.asset('image/'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: TextStyle(color: Colors.deepPurple),
      photoSize: 100.0,
      loaderColor: Colors.deepOrange,
    );
  }
}
