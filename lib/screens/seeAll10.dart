import 'package:flutter/material.dart';
import 'package:newflutter/itemdetail/R90.dart';
import 'package:newflutter/itemdetail/godBowl.dart';
import 'package:newflutter/itemdetail/kavukvase.dart';
import 'package:newflutter/itemdetail/mystical.dart';
import 'package:newflutter/itemdetail/rumiliKase.dart';
import 'package:newflutter/itemdetail/soteria.dart';
import 'package:newflutter/screens/hagia.dart';
import 'package:newflutter/screens/mainPage.dart';
import 'package:newflutter/screens/seeAll.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAll10 extends StatefulWidget {
  @override
  _SeeAll10State createState() => _SeeAll10State();
}

class _SeeAll10State extends State<SeeAll10> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Container itemsList() {
    return new Container(
      height: 250.0.w,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 20.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return Mystical();
                                },
                              ),
                            );
                          },
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'image/MysticalVase.png',
                                width: 150.0.w,
                                height: 150.0.w,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // bottom: 0.0,
                          // height: 10.0,
                          right: 0.0,
                          left: 100,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'image/35%.png',
                              width: 39.0,
                              height: 24.0,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5.0,
                          right: 0.0,
                          left: 120.0,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'image/favorite.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                      height: 20.0,
                    ),
                    Text(
                      'Mystical Vase',
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.normal),
                    ),
                    // SizedBox(
                    //   height: 10.0.w,
                    // ),
                    Text(
                      '€3150',
                      style: TextStyle(
                          fontSize: 20.0.w,
                          color: Colors.black,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              //Kavuk
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return R90();
                              },
                            ),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'image/Rectangle90.png',
                              width: 150.0.w,
                              height: 150.0.w,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // bottom: 0.0,
                        // height: 10.0,
                        right: 0.0,
                        left: 100,
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'image/RepeatGrid8.png',
                            width: 39.0.w,
                            height: 24.0.w,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5.0,
                        right: 0.0,
                        left: 120.0,
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'image/favorite.png',
                            width: 30.0.w,
                            height: 30.0.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.0,
                    height: 20.0,
                  ),
                  Text(
                    'Mystical Vase',
                    style: TextStyle(
                        fontSize: 14.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '€4850',
                    style: TextStyle(
                        fontSize: 20.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ), // Child ListView
    );
  }

  Container itemsList2() {
    return new Container(
      height: 250.0.w,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 20.0.w),
                    child: Stack(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return Hagia();
                                },
                              ),
                            );
                          },
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'image/SoteriaVazo.png',
                                width: 150.0.w,
                                height: 150.0.w,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // bottom: 0.0,
                          // height: 10.0,
                          right: 0.0,
                          left: 100,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'image/35%.png',
                              width: 39.0.w,
                              height: 24.0.w,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5.0,
                          right: 0.0,
                          left: 120.0,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'image/favorite.png',
                              width: 30.0.w,
                              height: 30.0.w,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                    height: 20.0,
                  ),
                  Text(
                    'Hagia Sophia Deesis',
                    style: TextStyle(
                        fontSize: 14.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '€3450',
                    style: TextStyle(
                        fontSize: 20.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 30.0,
              ),
              //Kavuk
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Rumili();
                              },
                            ),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'image/Rectangle87.png',
                              width: 150.0.w,
                              height: 150.0.w,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5.0,
                        right: 0.0,
                        left: 120.0,
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'image/favorite.png',
                            width: 30.0.w,
                            height: 30.0.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.0,
                    height: 20.0,
                  ),
                  Text(
                    'Rumili Kase',
                    style: TextStyle(
                        fontSize: 14.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '€2350',
                    style: TextStyle(
                        fontSize: 20.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ), // Child ListView
    );
  }

  Container itemsList3() {
    return new Container(
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 20.0.w),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return KavukVase();
                                },
                              ),
                            );
                          },
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'image/Rectangle86.png',
                                width: 150.0.w,
                                height: 150.0.w,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5.0,
                          right: 0.0,
                          left: 120.0,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'image/favorite.png',
                              width: 30.0.w,
                              height: 30.0.w,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0.w,
                      height: 20.0.w,
                    ),
                    Text(
                      'Kavuk Vase',
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '€4250',
                      style: TextStyle(
                          fontSize: 20.w,
                          color: Colors.black,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              //Kavuk
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Sotraia();
                              },
                            ),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'image/Rectangle89.png',
                              width: 150.0.w,
                              height: 150.0.w,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // bottom: 0.0,
                        // height: 10.0,
                        right: 0.0,
                        left: 100,
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'image/RepeatGrid8.png',
                            width: 39.0.w,
                            height: 24.0.w,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5.0,
                        right: 0.0,
                        left: 120.0,
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'image/favorite.png',
                            width: 30.0.w,
                            height: 30.0.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.0,
                    height: 20.0,
                  ),
                  Text(
                    'Soteria Vase',
                    style: TextStyle(
                        fontSize: 14.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '€2950',
                    style: TextStyle(
                        fontSize: 20.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ), // Child ListView
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 0.0, right: 145.0, bottom: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: () => {
                    Navigator.of(context).pop(),
                  },
                  color: Colors.black,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),

                      // Text("back"),
                    ],
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    'LEATHER STRAP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13.w,
                        color: Colors.white,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: ListView(
                  padding: EdgeInsets.only(top: 40.0),
                  children: <Widget>[
                    Text(
                      'Add a Signature                to Your Look',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.w,
                          color: Colors.black,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "The latest styles of men's leather watches",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.black,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.normal),
                    ),

                    Container(
                      child: itemsList(),
                    ), // Items List Container

                    Container(
                      child: itemsList2(),
                    ), // Items List Container

                    Container(
                      child: itemsList3(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
