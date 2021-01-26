import 'package:flutter/material.dart';

class Hagia extends StatefulWidget {
  @override
  _HagiaState createState() => _HagiaState();
}

class _HagiaState extends State<Hagia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 5.0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              size: 26.0,
              color: Colors.black,
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(right: 20.0),
          //   child: Icon(Icons.favorite),
          // ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }
}
