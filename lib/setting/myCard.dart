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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
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
                      child: CreditCard(
                        cardBackground: SolidColorCardBackground(Colors.white),
                        cardNetworkType: CardNetworkType.mastercard,
                        cardHolderName: 'Issarapap Sengdang',
                        cardNumber: '1234 **** **** ****',
                        company: CardCompany.citiBank,
                        validity: Validity(
                          validThruMonth: 1,
                          validThruYear: 25,
                        ),
                        numberColor: Colors.black,
                        validityColor: Colors.black,
                        cardHolderNameColor: Colors.black,
                      ),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.all(
                      //     Radius.circular(12),
                      //   ),
                      //   image: DecorationImage(
                      //     image: AssetImage(
                      //       'image/CreditCard.png',
                      //     ),
                      //     // fit: BoxFit.cover,
                      //     // fit: BoxFit.cover,
                      //   ),
                      // ),
                    ),
                    // SizedBox(
                    //   width: 5.0,
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'image/CreditCard2.png',
                          ),
                          // fit: BoxFit.cover,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          CreditCardWidget(
                            cardNumber: cardNumber,
                            expiryDate: expiryDate,
                            cardHolderName: cardHolderName,
                            cvvCode: cvvCode,
                            showBackView: isCvvFocused,
                            obscureCardNumber: true,
                            obscureCardCvv: true,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  CreditCardForm(
                                    formKey: formKey,
                                    obscureCvv: true,
                                    obscureNumber: true,
                                    cardNumberDecoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Number',
                                        hintText: '1234 5678 1234 5678'),
                                    expiryDateDecoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Expired Date',
                                        hintText: 'XX/XX'),
                                    cvvCodeDecoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'CVV',
                                      hintText: 'XXX',
                                    ),
                                    cardHolderDecoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Card Holder',
                                    ),
                                    onCreditCardModelChange:
                                        onCreditCardModelChange,
                                  ),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      child: const Text(
                                        'Validate',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'halter',
                                          fontSize: 14,
                                          package: 'flutter_credit_card',
                                        ),
                                      ),
                                    ),
                                    color: const Color(0xff1b447b),
                                    onPressed: () {
                                      if (formKey.currentState.validate()) {
                                        print('valid');
                                      } else {
                                        print('invalid!');
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
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
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
