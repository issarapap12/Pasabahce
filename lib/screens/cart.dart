import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/screens/loadingOder.dart';
import 'package:newflutter/screens/shippingAddress.dart';
import 'package:newflutter/setting/myCard.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ButtonTheme(
      minWidth: 244.0.w,
      height: 44.0.w,
      child: RaisedButton(
        color: pasa,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: BorderSide(
            color: pasa,
          ),
        ),
        child: Text(
          'PLACE ORDER',
          style: TextStyle(
              fontSize: 15.0.w,
              color: Colors.white,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w600),
        ),
        onPressed: () {
          print('You Click Place Order');
          MaterialPageRoute materialPageRoute = MaterialPageRoute(
              builder: (BuildContext context) => LoadingOrder());
          Navigator.of(context).push(materialPageRoute);
        },
      ),
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
              title: Center(
                child: Container(
                  padding: EdgeInsets.only(right: 50.w),
                  child: Text(
                    'ORDER DETAILS',
                    style: TextStyle(
                        fontSize: 13.0.w,
                        color: Colors.white,
                        fontFamily: 'AvenirBook',
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
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
                    padding: EdgeInsets.zero,
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
                        padding: EdgeInsets.only(top: 25.0),
                        children: <Widget>[
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0.w,
                                  ),
                                  Text(
                                    'SHIPPING TO',
                                    style: TextStyle(
                                        fontSize: 14.0.w,
                                        color: shipping,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    width: 180.0,
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return ShippingAddress();
                                          },
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Change',
                                      style: TextStyle(
                                        color: pasa,
                                        fontSize: 14.0.w,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15.0.w,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                                    child: Text(
                                      "Dereboyu Cad. No.23,",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0.w,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text(
                                    "34410 - Istanbul/Türkiye",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0.w,
                                      fontFamily: 'AvenirBook',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 15.0, right: 15.0),
                                child: Divider(
                                  color: Colors.black26,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Text(
                                        'PAY WITH CREDIT CARD',
                                        style: TextStyle(
                                            fontSize: 14.0.w,
                                            color: Colors.black,
                                            fontFamily: 'AvenirBook',
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        width: 110.0,
                                      ),
                                      FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return MyCard();
                                              },
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Change',
                                          style: TextStyle(
                                              fontSize: 14.0.w,
                                              color: pasa,
                                              fontFamily: 'AvenirBook',
                                              fontWeight: FontWeight.normal),
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
                                              style: TextStyle(
                                                  fontSize: 14.0.w,
                                                  color: Colors.black,
                                                  fontFamily: 'AvenirBook',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              softWrap: true),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Divider(
                                      color: Colors.black26,
                                    ),
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
                                        style: TextStyle(
                                            fontSize: 14.0.w,
                                            color: shipping,
                                            fontFamily: 'AvenirBook',
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
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
                                          Text(
                                            'Gulcehre Ibrik',
                                            style: TextStyle(
                                                fontSize: 14.0.w,
                                                color: Colors.black,
                                                fontFamily: 'AvenirBook',
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    right: 30.0, top: 5.0),
                                                child: Text(
                                                  '€5650',
                                                  style: TextStyle(
                                                      fontSize: 20.0.w,
                                                      color: Colors.black,
                                                      fontFamily: 'AvenirHeavy',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  // textAlign: TextAlign.left,
                                                ),
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
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Mystical Vase',
                                            style: TextStyle(
                                                fontSize: 14.0.w,
                                                color: Colors.black,
                                                fontFamily: 'AvenirBook',
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    right: 30.0, top: 5.0),
                                                child: Text(
                                                  '€4850',
                                                  style: TextStyle(
                                                      fontSize: 20.0.w,
                                                      color: Colors.black,
                                                      fontFamily: 'AvenirBook',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  // textAlign: TextAlign.left,
                                                ),
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
                                        'image/MysticalVase.png',
                                        width: 90.0,
                                        height: 90.0,
                                      ),
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Mystical Vase',
                                            style: TextStyle(
                                                fontSize: 14.0.w,
                                                color: Colors.black,
                                                fontFamily: 'AvenirBook',
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    right: 30.w, top: 5),
                                                child: Text(
                                                  '€3150',
                                                  style: TextStyle(
                                                      fontSize: 20.0.w,
                                                      color: Colors.black,
                                                      fontFamily: 'AvenirBook',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  // textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Divider(
                                      color: Colors.black26,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                        height: 30.0,
                                      ),
                                      Text(
                                        'SHIPPING METHOD',
                                        style: TextStyle(
                                            fontSize: 14.0.w,
                                            color: shipping,
                                            fontFamily: 'AvenirBook',
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
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
                                        style: TextStyle(
                                            fontSize: 14.0.w,
                                            color: Colors.black,
                                            fontFamily: 'AvenirBook',
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: 85.0,
                                          ),
                                          Text(
                                            'Free',
                                            style: TextStyle(
                                              fontSize: 14.0.w,
                                              color: pasa,
                                              fontFamily: 'AvenirHeavy',
                                              fontWeight: FontWeight.normal,
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
                                          activeColor: pasa),
                                      Text(
                                        'Express (8 days)',
                                        style: TextStyle(
                                            fontSize: 14.0.w,
                                            color: Colors.black,
                                            fontFamily: 'AvenirBook',
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        width: 170.0,
                                      ),
                                      Text(
                                        '€$priceExpres',
                                        style: TextStyle(
                                            fontSize: 14.0.w,
                                            color: Colors.black,
                                            fontFamily: 'AvenirBook',
                                            fontWeight: FontWeight.normal),
                                      )
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
                                        activeColor: pasa,
                                      ),
                                      Text(
                                        'Premium (1 day)',
                                        style: TextStyle(
                                            fontSize: 14.0.w,
                                            color: Colors.black,
                                            fontFamily: 'AvenirBook',
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        width: 170.0,
                                      ),
                                      Text(
                                        '€$pricePremium',
                                        style: TextStyle(
                                            fontSize: 14.0.w,
                                            color: Colors.black,
                                            fontFamily: 'AvenirBook',
                                            fontWeight: FontWeight.normal),
                                      )
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
                                      'SUBTOTAL',
                                      style: TextStyle(
                                          fontSize: 14.0.w,
                                          color: Colors.white,
                                          fontFamily: 'AvenirBook',
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 220.0),
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                '€13.650',
                                                style: TextStyle(
                                                    fontSize: 14.0.w,
                                                    color: Colors.white,
                                                    fontFamily: 'AvenirBook',
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                    Text(
                                      'SHIPPING',
                                      style: TextStyle(
                                          fontSize: 14.0.w,
                                          color: Colors.white,
                                          fontFamily: 'AvenirBook',
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 195.0),
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                'Please select',
                                                style: TextStyle(
                                                    fontSize: 14.0.w,
                                                    color: pp,
                                                    fontFamily: 'AvenirBook',
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.0,
                                      width: 25.0,
                                    ),
                                    Text(
                                      'Total to Pay',
                                      style: TextStyle(
                                          fontSize: 20.0.w,
                                          color: Colors.white,
                                          fontFamily: 'AvenirBook',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 165.0),
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                '€13.690',
                                                style: TextStyle(
                                                    fontSize: 20.0.w,
                                                    color: Colors.white,
                                                    fontFamily: 'AvenirBook',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
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
