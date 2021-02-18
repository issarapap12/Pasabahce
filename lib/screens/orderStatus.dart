import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/screens/cart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newflutter/screens/search.dart';

class OrderStatus extends StatefulWidget {
  // OrderStatus(Key key) : super(key: key);
  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  int _selected = 0;
  void onChanged(int value) {
    setState(() {
      _selected = value;
    });
    print('Value = $value');
  }

  bool _value = false;
  int group = 1;
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Center(
                child: Text(
                  'Order Status',
                  style: TextStyle(
                      fontSize: 13.w,
                      color: Colors.white,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
              expandedHeight: mediaQuery.size.height / 10,
              backgroundColor: Colors.black,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Cart(),
                      //   ),
                      // );
                    }),
              ],
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(9))),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: mediaQuery.size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 25.0, top: 0.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: pasa,
                                        border: Border.all(
                                          color: pasa,
                                        ),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: _value
                                              ? Icon(
                                                  Icons.check,
                                                  size: 10.0.w,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check_box_outline_blank,
                                                  size: 10.0.w,
                                                  color: pasa,
                                                )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Column(
                                    children: [
                                      // Padding(
                                      //   padding: EdgeInsets.all(10.0),
                                      // child:
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 30.0,
                                          left: 0.0,
                                          right: 140.0,
                                          bottom: 20.0,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Order Placed',
                                              style: TextStyle(
                                                  fontSize: 20.w,
                                                  color: Colors.black,
                                                  fontFamily: 'AvenirHeavy',
                                                  fontWeight: FontWeight.bold),

                                              // ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Your order #212423 was placed on 23th ',
                                            style: TextStyle(
                                                fontSize: 14.w,
                                                color: Colors.black,
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.normal),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 0.0,
                                          right: 150.0,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              'November 2019.',
                                              style: TextStyle(
                                                  fontSize: 14.w,
                                                  color: Colors.black,
                                                  fontFamily: 'Avenir',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Image.asset(
                                    'image/line.png',
                                    width: 1,
                                    height: 64.0.w,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: _value
                                              ? Icon(
                                                  Icons.check,
                                                  size: 10.0.w,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check_box_outline_blank,
                                                  size: 10.0.w,
                                                  color: Colors.white,
                                                )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 0.0,
                                          right: 140.0,
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              'Processing',
                                              style: TextStyle(
                                                  fontSize: 20.w,
                                                  color: Colors.black,
                                                  fontFamily: 'AvenirHeavy',
                                                  fontWeight: FontWeight.bold),
                                              // textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Text(
                                        'Your order still needs to be processed ',
                                        style: TextStyle(
                                            fontSize: 14.w,
                                            color: Colors.black,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.left,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 0.0,
                                          right: 10.0,
                                        ),
                                        child: Text(
                                          'by our store before sending it to you.',
                                          style: TextStyle(
                                              fontSize: 14.w,
                                              color: Colors.black,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Image.asset(
                                    'image/line.png',
                                    width: 1,
                                    height: 64.0.w,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: _value
                                              ? Icon(
                                                  Icons.check,
                                                  size: 10.0.w,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check_box_outline_blank,
                                                  size: 10.0.w,
                                                  color: Colors.white,
                                                )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 0.0,
                                          right: 15.0,
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              'Picked up by the courier',
                                              style: TextStyle(
                                                  fontSize: 20.w,
                                                  color: Colors.black,
                                                  fontFamily: 'Avenir',
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 0.0,
                                          right: 2.0,
                                        ),
                                        child: Text(
                                          'Your order has been picked up by one',
                                          style: TextStyle(
                                              fontSize: 14.w,
                                              color: Colors.black,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Text(
                                        'of our couriers and its on your way.',
                                        style: TextStyle(
                                            fontSize: 14.w,
                                            color: Colors.black,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Image.asset(
                                    'image/line.png',
                                    width: 1,
                                    height: 64.0,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: _value
                                              ? Icon(
                                                  Icons.check,
                                                  size: 10.0.w,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check_box_outline_blank,
                                                  size: 10.0.w,
                                                  color: Colors.white,
                                                )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30.0),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 0.0,
                                                right: 150.0,
                                              ),
                                              child: Text(
                                                'Delivering',
                                                style: TextStyle(
                                                    fontSize: 20.w,
                                                    color: Colors.black,
                                                    fontFamily: 'Avenir',
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 0.0,
                                          right: 2.0,
                                        ),
                                        child: Text(
                                          'The package is on your way. Make sure',
                                          style: TextStyle(
                                              fontSize: 14.w,
                                              color: Colors.black,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Text(
                                        'to be at the location to meet the courier.',
                                        style: TextStyle(
                                            fontSize: 14.w,
                                            color: Colors.black,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Image.asset(
                                    'image/line.png',
                                    width: 1,
                                    height: 64.0,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: _value
                                              ? Icon(
                                                  Icons.check,
                                                  size: 10.0.w,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check_box_outline_blank,
                                                  size: 10.0.w,
                                                  color: Colors.white,
                                                )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 30.0.w),
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    left: 0.0,
                                                    right: 150.0,
                                                  ),
                                                  child: Text(
                                                    'Delivering',
                                                    style: TextStyle(
                                                        fontSize: 20.w,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'AvenirHeavy',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'It seems like the package has arrived to ',
                                        style: TextStyle(
                                            fontSize: 14.w,
                                            color: Colors.black,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'you. Hope you are happy with it!',
                                        style: TextStyle(
                                            fontSize: 14.w,
                                            color: Colors.black,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
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
