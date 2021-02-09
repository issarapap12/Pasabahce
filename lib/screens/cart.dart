import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _selected = 0;

  int priceStandard = 0;
  int priceExpres = 40;
  int pricePremium = 80;

  int totalPrice = 0;

  void onChanged(int value) {
    setState(() {
      _selected = value;
    });
    print('Value = $value');
  }

  int group = 1;
  Widget placeButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(),
        SizedBox(
          width: 2.0,
        ),
        display2(),
      ],
    );
  }

  Widget display2() {
    return RaisedButton(
      color: Color(0xFFD6A578),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Color(0xFF5F5D5D),
        ),
      ),
      child: Text(
        'Place Order',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      onPressed: () {
        print('You Click Place Order');
        // MaterialPageRoute materialPageRoute =
        //     MaterialPageRoute(builder: (BuildContext context) => Register());
        // Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            new SliverAppBar(
              expandedHeight: mediaQuery.size.height / 10,
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(9))),
            ),
            new SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    // padding: EdgeInsets.zero,
                    height: mediaQuery.size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
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
                      child: ListView(
                        children: <Widget>[
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text('Shipping to'),
                                  SizedBox(
                                    width: 200.0,
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Change',
                                      style: TextStyle(
                                        color: pasa,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Flexible(
                                    //newly added
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 0.0, 15.0),
                                      child: Text(
                                          "Dereboyu Cad. No.23, 34410 - Istanbul/Türkiye",
                                          style: TextStyle(),
                                          softWrap: true),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Text('PAY WITH CREDIT CARD'),
                                      SizedBox(
                                        width: 120.0,
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Change',
                                          style: TextStyle(
                                            color: pasa,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Flexible(
                                        //newly added
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                              "XXXX - XXXX - XXXX - 9123",
                                              style: TextStyle(),
                                              softWrap: true),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                        height: 30.0,
                                      ),
                                      Text(
                                        'ORDER DETAILS',
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Image.asset(
                                        'image/Gulcehre_ibrik2.png',
                                        width: 90.0,
                                        height: 90.0,
                                      ),
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Column(
                                        children: [
                                          Text('Gulcehre Ibrik'),
                                          Row(
                                            children: [
                                              Text(
                                                '€5650',
                                                // textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Image.asset(
                                        'image/Rectangle90.png',
                                        width: 90.0,
                                        height: 90.0,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Image.asset(
                                        'image/MysticalVase.png',
                                        width: 90.0,
                                        height: 90.0,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                        height: 30.0,
                                      ),
                                      Text('SHipping Method'),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Radio(
                                        value: 1,
                                        groupValue: group,
                                        onChanged: (T) {
                                          print(T);

                                          setState(() {
                                            group = T;
                                          });
                                        },
                                        activeColor: pasa,
                                      ),
                                      Text(
                                        'Standard Shipping (16 days)',
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: 90.0,
                                          ),
                                          Text(
                                            'Free',
                                            style: TextStyle(
                                              color: pasa,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Radio(
                                        value: 2,
                                        groupValue: group,
                                        onChanged: (T) {
                                          print(T);

                                          setState(() {
                                            group = T;
                                          });
                                        },
                                        activeColor: Colors.amber,
                                      ),
                                      Text(
                                        'Express (8 days)',
                                      ),
                                      SizedBox(
                                        width: 170.0,
                                      ),
                                      Text('€$priceExpres')
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Radio(
                                        value: 3,
                                        groupValue: group,
                                        onChanged: (T) {
                                          print(T);

                                          setState(() {
                                            group = T;
                                          });
                                        },
                                        activeColor: Colors.amber,
                                      ),
                                      Text(
                                        'Premium (1 day)',
                                      ),
                                      SizedBox(
                                        width: 170.0,
                                      ),
                                      Text('€$pricePremium')
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                              child: Container(
                            height: mediaQuery.size.height,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 30.0,
                                  width: 30.0,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                    Text(
                                      'Subtotal',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                    Text(
                                      'Shipping',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                    Text(
                                      'Total to Pay',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[placeButton()],
                                  ),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
