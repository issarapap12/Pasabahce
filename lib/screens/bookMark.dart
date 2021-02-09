import 'package:flutter/material.dart';
import 'package:newflutter/screens/delete.dart';
import 'package:newflutter/screens/search.dart';

class BookMark extends StatefulWidget {
  @override
  _BookMarkState createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
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
                      //       return R90();
                      //     },
                      //   ),
                      // );
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
                      '€2950',
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 0.0, right: 0.0, bottom: 30.0),
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
                          return Search();
                        },
                      ),
                    ),
                  },
                  color: Colors.black,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),

                      // Text("back"),
                    ],
                  ),
                ),
                Text(
                  ' FAVORITES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                FlatButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Delete();
                        },
                      ),
                    ),
                  },
                  color: Colors.black,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),

                      // Text("back"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0),
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
                    Center(
                      child: Text(
                        'Products you might like',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),

                    Center(
                      child: Row(
                        children: <Widget>[],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 60.0, left: 10.0, right: 0.0, bottom: 30.0),
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
            ),
          ),
        ],
      ),
    );
  }
}
