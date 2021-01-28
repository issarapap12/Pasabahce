import 'package:flutter/material.dart';
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

  Widget initScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        flexibleSpace: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
        ),
        title: Text(
          'STORE',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Search(),
                      ),
                    );
                  })),
        ],
      ),
      drawer: showDrawer(),
      body: PageView(
        // controller: _pagecontroller,
        // onPageChanged: _onPageChange,
        // physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: ListView(
                children: <Widget>[
                  Text(
                    'Ottoman Collection',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'Find the perfect watch for your wrist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 20.0),
                          child: Text(
                            "Categories",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            print('3');
                            var route = MaterialPageRoute(
                                builder: (context) => SeeAll10());
                            Navigator.of(context).push(route);
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: itemsList(),
                  ), // Items List Container

                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 20.0),
                          child: Text(
                            "Featured products",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            print('2');
                            // var route = MaterialPageRoute(
                            //     builder: (context) => HomeItemsDetailsScreens());
                            // Navigator.of(context).push(route);
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(color: Colors.deepPurple),
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
                          padding: EdgeInsets.only(left: 10.0, top: 20.0),
                          child: Text(
                            "Search by brand",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            print('object');
                            // var route = MaterialPageRoute(
                            //     builder: (context) => HomeItemsDetailsScreens());
                            // Navigator.of(context).push(route);
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: itemsList3(),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 20.0),
                          child: Text(
                            "Search by brand",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            print('object');
                            // var route = MaterialPageRoute(
                            //     builder: (context) => HomeItemsDetailsScreens());
                            // Navigator.of(context).push(route);
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: itemsList4(),
                  ),
                ],
              ),
            ),
          ),
        ],
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
                  ),
                  Text(
                    '€1750',
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
                  ),
                  Text(
                    '€4250',
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
                  ),
                  Text(
                    '€3450',
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
                  ),
                  Text(
                    '€4250',
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
                  ),
                  Text(
                    '€1750',
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
                        ),
                        Text(
                          '€3150',
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
                        ),
                        Text(
                          '€4850',
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetail(),
                  ),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetail(),
                  ),
                );
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
    return initScreen(context);
  }
}
