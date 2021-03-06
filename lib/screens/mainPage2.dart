import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/itemdetail/godBowl.dart';
import 'package:newflutter/itemdetail/kavukvase.dart';
import 'package:newflutter/itemdetail/rumiliKase.dart';
import 'package:newflutter/itemdetail/soteria.dart';
import 'package:newflutter/screens/bookMark.dart';
import 'package:newflutter/screens/cart.dart';
import 'package:newflutter/screens/hagia.dart';
import 'package:newflutter/screens/mainPage.dart';
import 'package:newflutter/screens/menu.dart';
import 'package:newflutter/screens/seeAll.dart';
import 'package:newflutter/screens/seeAll10.dart';
import 'package:newflutter/screens/setting.dart';

class MainPage2 extends StatefulWidget {
  @override
  _MainPage2State createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  PageController _pageController = PageController();
  // @override
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    SeeAll(),
    // SeeAll10(),
    Cart(),
    BookMark(),
    Setting(),
  ];
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
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

  Widget showHead() {
    return DrawerHeader(
      child: Column(
        children: <Widget>[],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: PageView(
        controller: _pageController,
        children: _widgetOptions,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: _selectedIndex == 0 ? pasa : Colors.black,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
              color: _selectedIndex == 1 ? pasa : Colors.black,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: _selectedIndex == 2 ? pasa : Colors.black,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_outline,
              color: _selectedIndex == 3 ? pasa : Colors.black,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: _selectedIndex == 4 ? pasa : Colors.black,
            ),
            label: " ",
          ),
        ],
      ),
    );
  }
}
