import 'package:flutter/material.dart';
import 'package:newflutter/components/list.dart';
import 'package:newflutter/itemdetail/godBowl.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Delete extends StatefulWidget {
  @override
  _DeleteState createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[];
  List<Collections> list = collection;
  void remove(int index) {
    list.removeAt(index);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Container itemsList() {
    return new Container(
      height: 220.0.w,
      child: ListView(
        // ถ้าใช้ตรงนี้เป็น list<collections>
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: [
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return Mystical();
                      //     },
                      //   ),
                      // );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Stack(
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
                                  'image/Icons-icon-remove.png',
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0.w,
                    // height: 20.0.w,
                  ),
                  Text(
                    'Mystical Vase',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0.w,
                        fontFamily: 'AvenirBook',
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5.0.w,
                  ),
                  Text(
                    '€3150',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0.w,
                        fontFamily: 'AvenirBook',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 30.0.w,
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
                            'image/Icons-icon-remove.png',
                            width: 30.0,
                            height: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.0.w,
                    // height: 20.0,
                  ),
                  Text(
                    'Mystical Vase',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0.w,
                        fontFamily: 'AvenirBook',
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5.0.w,
                  ),
                  Text(
                    '€4850',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0.w,
                        fontFamily: 'AvenirBook',
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
      height: 220.0.w,
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
                              'image/SoteriaVazo.png',
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
                            'image/Icons-icon-remove.png',
                            width: 30.0,
                            height: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.0.w,
                    // height: 20.0,
                  ),
                  Text(
                    'Hagia Sophia Deesis',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0.w,
                        fontFamily: 'AvenirBook',
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5.0.w,
                  ),
                  Text(
                    '€3450',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0.w,
                        fontFamily: 'AvenirBook',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 30.0.w,
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
                                return GodBowl();
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
                            'image/Icons-icon-remove.png',
                            width: 30.0,
                            height: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.0.w,
                    // height: 20.0,
                  ),
                  Text(
                    'Rumili Kase',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0.w,
                        fontFamily: 'AvenirBook',
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '€2350',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0.w,
                        fontFamily: 'AvenirBook',
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
          Center(
            child: Row(
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
                              'image/Icons-icon-remove.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0.w,
                      // height: 20.0,
                    ),
                    Text(
                      'Kavuk Vase',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0.w,
                          fontFamily: 'AvenirBook',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 5.0.w,
                    ),
                    Text(
                      '€4250',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0.w,
                          fontFamily: 'AvenirBook',
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
                                  return GodBowl();
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
                          bottom: 5.0,
                          right: 0.0,
                          left: 120.0,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'image/Icons-icon-remove.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0.w,
                      // height: 20.0,
                    ),
                    Text(
                      'Soteria Vase',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0.w,
                          fontFamily: 'AvenirBook',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 5.0.w,
                    ),
                    Text(
                      '€2950',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0.w,
                          fontFamily: 'AvenirBook',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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
              automaticallyImplyLeading: false,
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.clear,
                      size: 20.0.w,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
              floating: true,
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    padding: EdgeInsets.only(left: 32.0, right: 32.0),
                    child: Text(
                      'Favorites',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0.w,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'To remove an item, simply tap on ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0.w,
                            fontFamily: 'AvenirBook',
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        'the icon on the bottom right corner of the product.',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0.w,
                            fontFamily: 'AvenirBook',
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
              expandedHeight: mediaQuery.size.height / 5,
              backgroundColor: Colors.black,
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
                    child: Center(
                      child: ListView(
                        padding: EdgeInsets.only(top: 30.0.w, left: 10.0.w),
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Products you might like',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0.w,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          Row(
                            children: <Widget>[],
                          ),

                          Container(
                            margin: EdgeInsets.only(
                                top: 30.0.w,
                                left: 10.0.w,
                                right: 0.0.w,
                                bottom: 30.0.w),
                            child: itemsList(),
                          ), // Items List Container

                          Row(
                            children: <Widget>[],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 0.0, left: 10.0, right: 0.0, bottom: 30.0),
                            child: itemsList2(),
                          ), // Items List Container

                          Container(
                            margin: EdgeInsets.only(
                                top: 0.0, left: 10.0, right: 0.0, bottom: 30.0),
                            child: itemsList3(),
                          ),
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

final itemc = ChangeNotifierProvider<CollectionItem>(create: null);

class CollectionItem extends ChangeNotifier {
  List<Collections> list = collection;
  void remove(int index) {
    list.removeAt(index);
    notifyListeners();
  }
}
