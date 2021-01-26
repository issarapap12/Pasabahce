import 'package:flutter/material.dart';

import 'package:newflutter/screens/hagia.dart';
import 'package:newflutter/screens/search.dart';

import 'package:newflutter/screens/seeAll.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget showDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          showHead(),
        ],
      ),
    );
  }

  // Widget showListP() {
  //   return ListTile(
  //     leading: Icon(Icons.access_alarms_rounded),
  //   );
  // }

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
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(0.0),
          //     topRight: Radius.circular(0.0),
          //   ),
          // ),
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

          // Padding(
          //   padding: EdgeInsets.only(right: 20.0),
          //   child: Icon(
          //     Icons.shopping_cart,
          //     color: Colors.white,
          //   ),
          // ),
        ],
        // iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: showDrawer(),
      body: Container(
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
                        var route =
                            MaterialPageRoute(builder: (context) => SeeAll());
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
              ) // Items List Container
            ],
          ),
        ), // Main/Parent List View
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30.0,
              color: Colors.black,
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.widgets_outlined,
              size: 30.0,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_mall_outlined,
              size: 30.0,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_outline,
              size: 30.0,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30.0,
              color: Colors.black,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
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
          items("image/Rectangle85.png", "Thank God Bowl", "€1750"),
          items("image/Rectangle86.png", "€1750", "Thank God Bowl"),
          items("image/Rectangle87.png", "€1750", "Thank God Bowl"),
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
          items("image/SoteriaVazo.png", "Thank God Bowl", "€1750"),
          items("image/Rectangle89.png", "Item Price", "Item Desc "),
          items("image/Rectangle86.png", "Item Price", "Item Desc "),
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
            items("image/MysticalVase.png", "€1750", "Thank God Bowl"),
            items("image/Rectangle90.png", "Item Price", "Item Desc "),
            items("image/Gulcehre_ibrik2.png", "Item Price", "Item Desc "),
          ],
        ),
      ), // Child ListView
    );
  }

  Container itemsList4() {
    return new Container(
      height: 250.0,
      child: Container(
        child: Center(
            child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Hagia();
                      },
                    ),
                  );
                },
                child: Image.asset('image/'))),
      ), // Child ListView
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

  Container bottomBarrTap() {
    return Container(
      child: Column(
        children: [
          new BottomNavigationBar(items: null),
        ],
      ),
    );
  }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       drawer: showDrawer(),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(
//                 top: 60.0, left: 0.0, right: 183.0, bottom: 30.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 // FlatButton(
//                 //   onPressed: () => {
//                 //     Navigator.push(
//                 //       context,
//                 //       MaterialPageRoute(
//                 //         builder: (context) {
//                 //           return Splash2();
//                 //         },
//                 //       ),
//                 //     ),
//                 //   },
//                 //   color: Colors.black,
//                 //   child: Stack(
//                 //     alignment: Alignment.topLeft,
//                 //     children: <Widget>[
//                 //       Icon(
//                 //         Icons.arrow_back,
//                 //         color: Colors.white,
//                 //       ),

//                 //       // Text("back"),
//                 //     ],
//                 //   ),
//                 // ),
//                 Text(
//                   'Store',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 15.0,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 20.0),
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
//                     Row(
//                       children: <Widget>[
//                         SizedBox(
//                           width: 80,
//                         ),
//                       ],
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         SizedBox(
//                           height: 50.0,
//                         ),
//                       ],
//                     )
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

  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }
}
