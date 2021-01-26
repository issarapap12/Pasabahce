import 'package:flutter/material.dart';

class GodBowl extends StatefulWidget {
  @override
  _GodBowlState createState() => _GodBowlState();
}

class _GodBowlState extends State<GodBowl> {
  Widget showImage() {
    return Container(
      width: 450.0,
      height: 350.0,
      child: Image.asset('image/Gulcehre_ibrik2.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // automaticallyImplyLeading: false,
        // elevation: 5.0,
        // leading: Icon(
        //   Icons.menu,
        //   color: Colors.black,
        // ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        // padding: EdgeInsets.all(5.0),
        children: <Widget>[
          showImage(),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
