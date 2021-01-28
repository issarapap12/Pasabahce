import 'package:flutter/material.dart';

class CheckEmail extends StatefulWidget {
  @override
  _CheckEmailState createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeDiceFace();
                    setState(() {});
                  },
                  child: Image.asset(
                    'image/Rectangle85.png',
                    height: 150,
                    width: 150,
                  ))),
          // Expanded(
          //     child: FlatButton(
          //         onPressed: () {
          //           changeDiceFace();
          //           setState(() {});
          //         },
          //         child: Image.asset('image/Rectangle85.png'))),
        ],
      ),
    );
  }
}
