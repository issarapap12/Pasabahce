import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/screens/signIn.dart';
import 'package:newflutter/screens/verification.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SpinKitCircle(
                      color: pasa,
                    ),
                  ],
                ),
                Text(
                  'Loading',
                  style: TextStyle(color: pasa),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
