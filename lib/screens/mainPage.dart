import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/itemdetail/R90.dart';
import 'package:newflutter/itemdetail/godBowl.dart';
import 'package:newflutter/itemdetail/kavukvase.dart';
import 'package:newflutter/itemdetail/mystical.dart';
import 'package:newflutter/itemdetail/rumiliKase.dart';
import 'package:newflutter/itemdetail/soteria.dart';
import 'package:newflutter/screens/bookMark.dart';
import 'package:newflutter/screens/cart.dart';

import 'package:newflutter/screens/hagia.dart';
import 'package:newflutter/screens/menu.dart';
import 'package:newflutter/screens/productDetail.dart';
import 'package:newflutter/screens/search.dart';

import 'package:newflutter/screens/seeAll.dart';
import 'package:newflutter/screens/seeAll10.dart';
import 'package:newflutter/screens/setting.dart';
import 'package:newflutter/screens/splash2.dart';
import 'package:newflutter/screens/verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newflutter/screens/signIn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  // MainPage(Key key) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget showDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          showHead(),
        ],
      ),
    );
  }

  Widget showHead() {
    return DrawerHeader(
      child: Column(
        children: <Widget>[],
      ),
    );
  }

  Widget showImage() {
    return Container(
      width: 500.0,
      height: 400.0,
      child: Image.asset('image/Gulcehre_ibrik2.png'),
    );
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
                          width: 160.0,
                          height: 160.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                    height: 20.0,
                  ),
                  Text(
                    'Thank God Bowl',
                    style: TextStyle(
                        fontSize: 14.0.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '€1750',
                    style: TextStyle(
                        fontSize: 20.0.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              //Kavuk
              Column(
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
                          width: 160.0,
                          height: 160.0,
                        ),
                      ),
                    ),
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
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '€4250',
                    style: TextStyle(
                        fontSize: 20.0.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              //Rumili
              Column(
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
                          width: 160.0,
                          height: 160.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                    height: 20.0,
                  ),
                  Text(
                    'Rumili Kase',
                    style: TextStyle(
                        fontSize: 14.0.w,
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '€2350',
                    style: TextStyle(
                        fontSize: 20.0.w,
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
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: [
              //Hagia Sophia Deesis
              Column(
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
                          width: 160.0,
                          height: 160.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
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
                  Text(
                    '€3450',
                    style: TextStyle(
                        fontSize: 20.0.w,
                        color: Colors.black,
                        fontFamily: 'AvenirHeavy',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              //Kavuk Vase
              Column(
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
                          width: 160.0,
                          height: 160.0,
                        ),
                      ),
                    ),
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
                  Text(
                    '€4250',
                    style: TextStyle(
                      fontSize: 20.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirHeavy',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              //Soteria Vase
              Column(
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
                          width: 160.0,
                          height: 160.0,
                        ),
                      ),
                    ),
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
                  Text(
                    '€1750',
                    style: TextStyle(
                      fontSize: 20.0.w,
                      color: Colors.black,
                      fontFamily: 'AvenirHeavy',
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
                                width: 160.0,
                                height: 160.0,
                              ),
                            ),
                          ),
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
                        Text(
                          '€3150',
                          style: TextStyle(
                            fontSize: 20.0.w,
                            color: Colors.black,
                            fontFamily: 'AvenirHeavy',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    //Mystical Vase
                    Column(
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
                                width: 160.0,
                                height: 160.0,
                              ),
                            ),
                          ),
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
                        Text(
                          '€4850',
                          style: TextStyle(
                            fontSize: 20.0.w,
                            color: Colors.black,
                            fontFamily: 'AvenirHeavy',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    //Gulcehre Ibrik
                    Column(
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
                        SizedBox(
                          width: 30.0,
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
                        Text(
                          '€1750',
                          style: TextStyle(
                            fontSize: 20.0.w,
                            color: Colors.black,
                            fontFamily: 'AvenirHeavy',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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

  Widget signOutButton() {
    return IconButton(
      icon: Icon(Icons.exit_to_app),
      tooltip: 'Sign Out',
      onPressed: () {
        myAlert();
      },
    );
  }

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Are You Sure ?',
              style: TextStyle(
                  fontSize: 14.w,
                  color: Colors.black,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w500),
            ),
            content: Text(
              'Do you want Sign Out?',
              style: TextStyle(
                  fontSize: 14.w,
                  color: Colors.black,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w500),
            ),
            actions: <Widget>[
              cancelButton(),
              okButton(),
            ],
          );
        });
  }

  Future<void> processSignOut() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.signOut().then((response) {
      MaterialPageRoute materialPageRoute =
          MaterialPageRoute(builder: (BuildContext context) => Splash2());

      Navigator.of(context).pushAndRemoveUntil(
          materialPageRoute, (Route<dynamic> route) => false);
    });
  }

  Widget cancelButton() {
    return FlatButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text(
        'Cancel',
        style: TextStyle(
            fontSize: 14.w,
            color: Colors.black,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget okButton() {
    return FlatButton(
      color: pasa,
      onPressed: () {
        Navigator.of(context).pop();
        processSignOut();
      },
      child: Text(
        'ok',
        style: TextStyle(
            fontSize: 14.w,
            color: Colors.white,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w500),
      ),
    );
  }

  Container itemsList4() {
    return new Container(
      height: 250.0,
      child: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: [
                //Mystical Vase
                Column(
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
                            width: 160.0.w,
                            height: 160.0.w,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.0.w,
                      height: 20.0.w,
                    ),
                    Text(
                      'Thank God Bowl',
                    ),
                    Text(
                      '€1750',
                    ),
                  ],
                ),

                //Mystical Vase
                Column(
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
                    SizedBox(
                      width: 30.0,
                      height: 20.0,
                    ),
                    Text(
                      'Thank God Bowl',
                    ),
                    Text(
                      '€1750',
                    ),
                  ],
                ),

                //Gulcehre Ibrik
                Column(
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
                    SizedBox(
                      width: 30.0,
                      height: 20.0,
                    ),
                    Text(
                      'Thank God Bowl',
                    ),
                    Text(
                      '€1750',
                    ),
                  ],
                ),
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

  Container itemsList5() {
    return new Container(
      height: 220.0.w,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 25.0.w,
            height: 10.0.w,
          ),
          Row(
            children: [
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 0.0,
                          top: 20.0,
                          left: 0.0,
                        ),
                        child: Container(
                          child: InkWell(
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
                                child: Image.asset(
                                  'image/Rectangle.png',
                                  width: 315.0.w,
                                  height: 160.0.w,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          right: 0.0,
                          // top: 1.0,
                          left: 100.0,
                          // bottom: 220.0,
                        ),
                        child: Container(
                          child: Image.asset(
                            'image/Gulcehre_ibrik2.png',
                            width: 220,
                            height: 220,
                          ),
                        ),
                      ),
                      //   ),
                      // ),
                      Positioned(
                        bottom: 0.0,
                        right: 180.0,
                        left: 20.0,
                        top: 30.0,
                        // left: 120.0,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Gulcehre   Ibrik',
                                style: TextStyle(
                                    fontSize: 20.0.w,
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 15.0.w),
                                child: Text(
                                  'W:32cm H:26cm',
                                  style: TextStyle(
                                      fontSize: 14.0.w,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 55.0.w),
                                child: Text(
                                  '€5650',
                                  style: TextStyle(
                                      fontSize: 24.0.w,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 0.0,
                          top: 20.0,
                          left: 0.0,
                        ),
                        child: Container(
                          child: InkWell(
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
                                child: Image.asset(
                                  'image/Rectangle.png',
                                  width: 315.0,
                                  height: 160.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          right: 0.0,
                          // top: 1.0,
                          left: 100.0,
                          // bottom: 220.0,
                        ),
                        child: Container(
                          child: Image.asset(
                            'image/Gulcehre_ibrik2.png',
                            width: 220,
                            height: 220,
                          ),
                        ),
                      ),
                      //   ),
                      // ),
                      Positioned(
                        bottom: 120.0,
                        right: 180.0,
                        // left: 120.0,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Text('Gulcehre Ibrik'),
                              Text('W:32cm H:26cm'),
                              Text('€5650'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
        ],
      ), // Child ListView
    );
  }

  Container items2(String imgSrc, String title, String subTitle) {
    AssetImage image = new AssetImage(imgSrc);
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 130.0,
        child: Wrap(
          children: <Widget>[
            Image(image: image),
            ListTile(
              onTap: () {
                print('Click');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ProductDetail(),
                //   ),
                // );
                // Navigator.push(this.context, MaterialPageRoute(builder: (context) => ItemDetailsScreen()));
              },
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                subTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container items(String imgSrc, String title, String subTitle) {
    AssetImage image = new AssetImage(imgSrc);
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 130.0,
        child: Wrap(
          children: <Widget>[
            Image(image: image),
            ListTile(
              onTap: () {
                print('Click');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ProductDetail(),
                //   ),
                // );
                // Navigator.push(this.context, MaterialPageRoute(builder: (context) => ItemDetailsScreen()));
              },
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                subTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container shoppingItems(String imgSrc, String title, String subTitle) {
    return new Container(
        width: 150.0,
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.asset(imgSrc),
            subtitle: Text(title),
          ),
        ));
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
              // automaticallyImplyLeading: false,
              title: Center(
                child: Text(
                  'Store',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0.w,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
              expandedHeight: mediaQuery.size.height / 10,
              backgroundColor: Colors.black,
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 20.0.w,
                    ),
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
                      child: Center(
                        child: ListView(
                          padding: EdgeInsets.only(top: 40.0.w),
                          children: <Widget>[
                            Text(
                              'Ottoman Collection',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30.0.w,
                                  color: Colors.black,
                                  fontFamily: 'AvenirHeavy',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Find the perfect watch for your wrist',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.0.w,
                                  color: Colors.grey,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),

                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.0, top: 20.0),
                                    child: Text(
                                      "Categories",
                                      style: TextStyle(
                                          fontSize: 20.0.w,
                                          color: Colors.black,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.bold),
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
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.normal),
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
                                        left: 10.0, top: 20.0, bottom: 20.0),
                                    child: Text(
                                      "Top deals",
                                      style: TextStyle(
                                        fontSize: 20.0,
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
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: itemsList5(),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.0, top: 20.0),
                                    child: Text(
                                      "Featured products",
                                      style: TextStyle(
                                          fontSize: 20.0.w,
                                          color: Colors.black,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 20.0, right: 20.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      print('2');
                                    },
                                    child: Text(
                                      "See all >>",
                                      style: TextStyle(
                                          fontSize: 14.0.w,
                                          color: pasa,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.normal),
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
                                      "Search by brand",
                                      style: TextStyle(
                                          fontSize: 20.0.w,
                                          color: Colors.black,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.bold),
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
                                      style: TextStyle(
                                          fontSize: 14.0.w,
                                          color: pasa,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.normal),
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
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: signOutButton(),
      ),
    );
  }
}
