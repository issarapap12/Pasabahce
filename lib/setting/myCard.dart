import 'package:credit_card_slider/card_background.dart';
import 'package:credit_card_slider/card_company.dart';
import 'package:credit_card_slider/card_network_type.dart';
import 'package:credit_card_slider/credit_card_widget.dart';
import 'package:credit_card_slider/validity.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:credit_card_slider/credit_card_slider.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class MyCard extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<MyCard> {
  Widget carousell() {}
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  TextField numberCard;
  String _selected = '';

  void onChanged(String text) {
    setState(() {
      _selected = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 0.0, right: 0.0, bottom: 0.0),
            child: Stack(
              children: <Widget>[
                CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'image/CreditCard2.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 300.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Text('Card Number'),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Card Number',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Text('Cardholder Name'),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Cardholder Name',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Text('Cardholder Name'),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Cardholder Name',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Text('Cardholder Name'),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Cardholder Name',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
