import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/screens/forgotPassword.dart';
import 'package:newflutter/screens/mainPage2.dart';
import 'package:newflutter/screens/orderStatus.dart';
import 'package:newflutter/screens/otpPage.dart';

class OrderPlaced extends StatefulWidget {
  @override
  _OrderPlacedState createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  int leftButtonImage = 2;
  int rightButtonImage = 3;

  void diceSoundPlayer() {
    // final player = AudioCache();
    // player.play('rollDice.mp3');
  }
  void changeDiceFace() {
    diceSoundPlayer();
    // rightButtonImage = new Random().nextInt(6)+1;
    // leftButtonImage = new Random().nextInt(6)+1;
  }

  Widget otpBtn() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(),
        SizedBox(
          width: 2.0,
        ),
        display3(),
      ],
    );
  }

  Widget display3() {
    return ButtonTheme(
      minWidth: 240.0,
      height: 44.0,
      child: RaisedButton(
        color: pasa,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(
            color: pasa,
          ),
        ),
        child: Text(
          'See order statust',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        onPressed: () {
          // print('You Click Sign IN');

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return OrderStatus();
          }));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Column(
              children: [
                SizedBox(
                  width: 160.0,
                  height: 50.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 340.0,
                    ),
                    IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage2(),
                            ),
                          );
                        }),
                  ],
                ),
                showImageOv2(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: <Widget>[
                      otpBtn(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
