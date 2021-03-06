import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/itemdetail/godBowl.dart';
import 'package:newflutter/itemdetail/kavukvase.dart';
import 'package:newflutter/itemdetail/rumiliKase.dart';
import 'package:newflutter/itemdetail/soteria.dart';
import 'package:newflutter/screens/hagia.dart';
import 'package:newflutter/screens/mainPage.dart';
import 'package:newflutter/screens/mainPage2.dart';
import 'package:newflutter/screens/search.dart';
import 'package:newflutter/screens/seeAll10.dart';
import 'package:newflutter/screens/sortBar.dart';
import 'package:newflutter/screens/splash2.dart';
import 'package:newflutter/screens/test.dart';
import 'package:newflutter/screens/verification.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAll extends StatefulWidget {
  @override
  _SeeAllState createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  // var imagegb = new Im
  PageController controller = PageController();
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget initScreen() {
    return Scaffold();
  }

  Container itemsList() {
    return new Container(
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: [
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return GodBowl();
                              },
                            ),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'image/Rectangle85.png',
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
                    width: 20.0,
                    height: 20.0,
                  ),
                  Text(
                    'Thank God Bowl',
                    style: TextStyle(
                      fontSize: 14.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.w,
                  ),
                  Text(
                    '€1750',
                    style: TextStyle(
                      fontSize: 20.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // ],
              // ),
              SizedBox(
                width: 20.0,
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
                        // bottom: 0.0,
                        // height: 10.0,
                        right: 0.0,
                        left: 100.0,
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
                    width: 20.0,
                    height: 20.0,
                  ),
                  Text(
                    'Kavuk Vase',
                    style: TextStyle(
                      fontSize: 14.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.w,
                  ),
                  Text(
                    '€4250',
                    style: TextStyle(
                      fontSize: 20.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),

              //Rumili
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
                      // Positioned(
                      //   // bottom: 0.0,
                      //   // height: 10.0,
                      //   right: 0.0,
                      //   left: 100.0,
                      //   child: InkWell(
                      //     onTap: () {},
                      //     child: Image.asset(
                      //       'image/RepeatGrid8.png',
                      //       width: 39.0,
                      //       height: 24.0,
                      //     ),
                      //   ),
                      // ),
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
                    width: 20.0,
                    height: 20.0,
                  ),
                  Text(
                    'Rumili Kase',
                    style: TextStyle(
                      fontSize: 14.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.w,
                  ),
                  Text(
                    '€2350',
                    style: TextStyle(
                      fontSize: 20.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.bold,
                    ),
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
              //Hagia Sophia Deesis
              Column(
                children: <Widget>[
                  Stack(
                    children: [
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
                        left: 100.0,
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
                    width: 20.0,
                    height: 20.0,
                  ),
                  Text(
                    'Hagia Sophia Deesis',
                    style: TextStyle(
                      fontSize: 14.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.w,
                  ),
                  Text(
                    '€3450',
                    style: TextStyle(
                      fontSize: 20.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              //Soteria Vase
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
                        left: 100.0,
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
                        left: 121.0,
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
                    style: TextStyle(
                      fontSize: 14.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.w,
                  ),
                  Text(
                    '€1750',
                    style: TextStyle(
                      fontSize: 20.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),

              //Kavuk Vase
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
                    style: TextStyle(
                      fontSize: 14.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '€4250',
                    style: TextStyle(
                      fontSize: 20.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirBook',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          )
          // items("image/SoteriaVazo.png", "Thank God Bowl", "€1750"),
          // items("image/Rectangle89.png", "Item Price", "Item Desc "),
          // items("image/Rectangle86.png", "Item Price", "Item Desc "),
        ],
      ), // Child ListView
    );
  }

  Container itemsList3() {
    return new Container(
      height: 250.0,
      child: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    //Mystical Vase
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return GodBowl();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'image/MysticalVase.png',
                                    width: 160.0,
                                    height: 160.0,
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
                            fontSize: 14.0.w,
                            color: Colors.black,
                            fontFamily: 'AvenirBook',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10.0.w,
                        ),
                        Text(
                          '€3150',
                          style: TextStyle(
                            fontSize: 20.0.w,
                            color: Colors.black,
                            fontFamily: 'AvenirBook',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    //Mystical Vase
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return GodBowl();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'image/Rectangle90.png',
                                    width: 160.0,
                                    height: 160.0,
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
                          style: TextStyle(
                            fontSize: 14.0.w,
                            color: Colors.black,
                            fontFamily: 'AvenirBook',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '€4850',
                          style: TextStyle(
                            fontSize: 20.0.w,
                            color: Colors.black,
                            fontFamily: 'AvenirBook',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    //Gulcehre Ibrik
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return GodBowl();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'image/Gulcehre_ibrik2.png',
                                    width: 160.0,
                                    height: 160.0,
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
                          'Gulcehre Ibrik',
                        ),
                        Text(
                          '€5650',
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[],
                )
              ],
            )
            // items("image/MysticalVase.png", "€1750", "Thank God Bowl"),
            // items2("image/Rectangle90.png", "Item Price", "Item Desc "),
            // items("image/Gulcehre_ibrik2.png", "Item Price", "Item Desc "),
          ],
        ),
      ), // Child ListView
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
            SliverAppBar(
              expandedHeight: mediaQuery.size.height / 10,
              backgroundColor: Colors.black,
              title: Text(
                '                      CATEGORIES',
                style: TextStyle(
                    fontSize: 13.0.w,
                    color: Colors.white,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              actions: <Widget>[
                IconButton(
                  icon: Image.asset('image/Icons-Filter.png'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Verification(),
                      ),
                    );
                  },
                ),
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Search(),
                        ),
                      );
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
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.only(top: 40.0.w),
                        children: <Widget>[
                          Text(
                            'Ottoman Collection           Classic Collections',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30.0.w,
                              color: Colors.black,
                              fontFamily: 'AvenirHeavy',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Search through more than 1000+ watches',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0.w,
                              color: shipping,
                              fontFamily: 'AvenirBook',
                              fontWeight: FontWeight.normal,
                            ),
                          ),

                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.0, top: 20.0),
                                  child: Text(
                                    "Limited Edition",
                                    style: TextStyle(
                                      fontSize: 20.0.w,
                                      color: Colors.black,
                                      fontFamily: 'AvenirHeavy',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 20.0, right: 20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    print('3');
                                    var route = MaterialPageRoute(
                                        builder: (context) => SeeAll10());
                                    Navigator.of(context).push(route);
                                  },
                                  child: Text(
                                    "See all >>",
                                    style: TextStyle(
                                      fontSize: 14.0.w,
                                      color: pasa,
                                      fontFamily: 'AvenirBook',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: itemsList(),
                          ), // Items List Container
                          SizedBox(
                            height: 0.0,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, top: 0.0, bottom: 15.0),
                                  child: Text(
                                    "Anatolian Civilizations Catalog",
                                    style: TextStyle(
                                      fontSize: 20.0.w,
                                      color: Colors.black,
                                      fontFamily: 'AvenirBook',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 0.0, right: 20.0, bottom: 15.0),
                                child: GestureDetector(
                                  onTap: () {
                                    print('2');
                                  },
                                  child: Text(
                                    "See all >>",
                                    style: TextStyle(color: pasa),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: itemsList2(),
                          ), // Items List Container

                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.0, top: 20.0),
                                  child: Text(
                                    "Zevk-i Selim Catalog",
                                    style: TextStyle(
                                      fontSize: 20.0.w,
                                      color: Colors.black,
                                      fontFamily: 'AvenirBook',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 20.0, right: 20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    print('object');
                                  },
                                  child: Text(
                                    "See all >>",
                                    style: TextStyle(color: pasa),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: itemsList3(),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
