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

class SeeAll10 extends StatefulWidget {
  @override
  _SeeAll10State createState() => _SeeAll10State();
}

class _SeeAll10State extends State<SeeAll10> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Container itemsList() {
    return new Container(
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                width: 30.0,
              ),
              Column(
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
                              width: 150.0,
                              height: 150.0,
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
                  ),
                  Text(
                    '€3150',
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
                              width: 150.0,
                              height: 150.0,
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
                  ),
                  Text(
                    '€4850',
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
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                width: 30.0,
              ),
              Column(
                children: <Widget>[
                  Stack(
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
                              width: 150.0,
                              height: 150.0,
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
                    'Hagia Sophia Deesis',
                  ),
                  Text(
                    '€3450',
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
                              width: 150.0,
                              height: 150.0,
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
                    'Rumili Kase',
                  ),
                  Text(
                    '€2350',
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
              SizedBox(
                width: 30.0,
              ),
              Column(
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
                              width: 150.0,
                              height: 150.0,
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
                    'Kavuk Vase',
                  ),
                  Text(
                    '€4250',
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
                              width: 150.0,
                              height: 150.0,
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
                    'Soteria Vase',
                  ),
                  Text(
                    '€2950',
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
                top: 60.0, left: 0.0, right: 160.0, bottom: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SeeAll();
                        },
                      ),
                    ),
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
                Text(
                  '   Leather strap',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
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
                  children: <Widget>[
                    Text(
                      'Add a Signature to Your Look',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "The latest styles of men's leather watches",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
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
