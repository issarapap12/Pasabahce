import 'package:flutter/material.dart';
import 'package:newflutter/components/list.dart';
import 'package:newflutter/itemdetail/godBowl.dart';
import 'package:newflutter/screens/delete.dart';
import 'package:newflutter/screens/search.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookMark extends StatefulWidget {
  @override
  _BookMarkState createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
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
                                  'image/favorite.png',
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
                  InkWell(
                    onTap: () {},
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
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return Hagia();
                      //     },
                      //   ),
                      // );
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
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return Rumili();
                      //     },
                      //   ),
                      // );
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
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return KavukVase();
                        //     },
                        //   ),
                        // );
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
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return Sotraia();
                        //     },
                        //   ),
                        // );
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
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: Center(
                child: Container(
                  padding: EdgeInsets.only(left: 50.0.w),
                  child: Text(
                    'Favorites',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0.w,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              expandedHeight: mediaQuery.size.height / 10,
              backgroundColor: Colors.black,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Delete();
                          },
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
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             padding:
//                 EdgeInsets.only(top: 60.0, left: 0.0, right: 0.0, bottom: 30.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 FlatButton(
//                   onPressed: () => {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return Search();
//                         },
//                       ),
//                     ),
//                   },
//                   color: Colors.black,
//                   child: Stack(
//                     alignment: Alignment.topLeft,
//                     children: <Widget>[
//                       Icon(
//                         Icons.search,
//                         color: Colors.white,
//                       ),

//                       // Text("back"),
//                     ],
//                   ),
//                 ),
//                 Text(
//                   ' FAVORITES',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 15.0,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 FlatButton(
//                   onPressed: () => {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return Delete();
//                         },
//                       ),
//                     ),
//                   },
//                   color: Colors.black,
//                   child: Stack(
//                     alignment: Alignment.topLeft,
//                     children: <Widget>[
//                       Icon(
//                         Icons.delete,
//                         color: Colors.white,
//                       ),

//                       // Text("back"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.symmetric(horizontal: 0.0),
//               padding: EdgeInsets.symmetric(horizontal: 5.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20.0),
//                   topRight: Radius.circular(20.0),
//                 ),
//               ),
//               child: Center(
//                 child: ListView(
//                   children: <Widget>[
//                     Center(
//                       child: Text(
//                         'Products you might like',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 30,
//                         ),
//                       ),
//                     ),

//                     Center(
//                       child: Row(
//                         children: <Widget>[],
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(
//                           top: 60.0, left: 10.0, right: 0.0, bottom: 30.0),
//                       child: itemsList(),
//                     ), // Items List Container

//                     Row(
//                       children: <Widget>[],
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(
//                           top: 0.0, left: 10.0, right: 0.0, bottom: 30.0),
//                       child: itemsList2(),
//                     ), // Items List Container

//                     Container(
//                       margin: EdgeInsets.only(
//                           top: 0.0, left: 10.0, right: 0.0, bottom: 30.0),
//                       child: itemsList3(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
