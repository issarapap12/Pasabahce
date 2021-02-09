import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/screens/mainPage2.dart';
import 'package:provider/provider.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class GodBowl extends StatefulWidget {
  @override
  _GodBowlState createState() => _GodBowlState();
}

class _GodBowlState extends State<GodBowl> with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;
  double screenSize;
  double screenRatio;
  AppBar appBar;

  List<Tab> list = [
    Tab(
      icon: Icon(Icons.card_giftcard),
    ),
    Tab(
      icon: Icon(Icons.access_alarm_outlined),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print('object');
    });
  }

  // Widget showImage() {
  //   return Container(
  //     width: 450.0,
  //     height: 350.0,
  //     child: Image.asset('image/Rectangle85.png'),
  //   );
  // }

  Widget showText() {
    return Text(
      'Thank God Bowl',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget showPrice() {
    return Text(
      '€1750',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.0,
        color: pasa,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Center(child: Row()),
        SizedBox(
          width: 2.0,
        ),
        display(),
      ],
    );
  }

  Widget display() {
    return RaisedButton(
      color: Color(0xFFD6A578),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Color(0xFFD6A578),
        ),
      ),
      child: Text(
        '               ADD To Cart               ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      onPressed: () {
        print('You Click S');
      },
    );
  }

  Widget detailPage() {
    return Text(
      'After your registration is complete, you can see our opportunity products.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 15.0,
        color: Colors.grey,
        // fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget tab() {
    return TabBar(
      tabs: [
        Tab(
          text: "Description",
        ),
        Tab(
          text: "Specifications",
        ),
        Tab(
          text: "Reviews",
        ),
      ],
    );
  }

  Widget tabbarV() {
    return TabBarView(children: [
      Image(
        image: AssetImage(
          'image/Rectangle85.png',
        ),
      ),
      Image(
        image: AssetImage(
          'image/Rectangle85.png',
        ),
      ),
      Image(
        image: AssetImage(
          'image/Rectangle85.png',
        ),
      ),
    ]);
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
                        ),
                        Text(
                          '€3150',
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
                        ),
                        Text(
                          '€4850',
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

  Widget addButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(),
        SizedBox(
          width: 2.0,
        ),
        display2(),
      ],
    );
  }

  Widget display2() {
    return RaisedButton(
      color: pasa,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Color(0xFF5F5D5D),
        ),
      ),
      child: Text(
        '    Add to cart    ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      onPressed: () {
        print('You Click Creative');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainPage2();
              }));
            }),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                  child: Text(
                'Product details',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: mediaQuery.size.height / 2,
              pinned: true,
              backgroundColor: Colors.black,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Container(
                  color: Colors.black,
                  child: Column(
                    children: <Widget>[
                      showImage(),
                      // _userPhoto(),

                      // _capturePhoto(),
                    ],
                  ),
                ),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.pop(context),
              ),
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
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30.0,
                              ),
                              showText(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 100.0,
                                  ),
                                  ratingBar(),
                                  Text(
                                    '1.248 Reviews',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ],
                              ),
                              detailPage(),
                              showPrice(),
                              Container(
                                padding: const EdgeInsets.all(0.0),
                                color: Colors.white,
                                width: 600,
                                height: 320,
                                child: ContainedTabBarView(
                                  tabs: [
                                    Text('Description',
                                        style: TextStyle(color: Colors.black)),
                                    Text('Specifications',
                                        style: TextStyle(color: Colors.black)),
                                    Text('Reviews',
                                        style: TextStyle(color: Colors.black)),
                                  ],
                                  tabBarProperties: TabBarProperties(
                                      height: 25.0,
                                      indicatorColor: Colors.amber,
                                      indicatorWeight: 3.0,
                                      labelColor: Colors.black,
                                      unselectedLabelColor: Colors.grey[400]),
                                  views: [
                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          Center(
                                            child: Column(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 25.0,
                                                  height: 25.0,
                                                ),
                                                Text(
                                                  'The ewers were used for washing hands and face in Ottoman culture, and their different forms were used in the service of liquid drinks such as sherbet in the mansion, especially in the palace kitchen.',
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              SizedBox(
                                                width: 25.0,
                                                height: 15.0,
                                              ),
                                              Text('Case diameter'),
                                              SizedBox(
                                                width: 65.0,
                                              ),
                                              Text(
                                                'Diameter: 20 cm Length: 40 cm',
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 15.0, right: 15.0),
                                            child: Divider(
                                              color: Colors.black26,
                                            ),
                                          ),
                                          Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceBetween,
                                            // mainAxisSize: MainAxisSize.max,
                                            // crossAxisAlignment:
                                            //     CrossAxisAlignment.center,

                                            children: <Widget>[
                                              SizedBox(
                                                width: 25.0,
                                                height: 25.0,
                                              ),
                                              Text('Product Origin '),
                                              SizedBox(
                                                width: 215.0,
                                              ),
                                              Text(
                                                'Turkey',
                                              ),
                                              SizedBox(
                                                width: 5.0,
                                              )
                                            ],
                                          ),
                                          // SizedBox(
                                          //   height: 15.0,
                                          // ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 15.0, right: 15.0),
                                            child: Divider(
                                              color: Colors.black26,
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              SizedBox(
                                                width: 25.0,
                                                height: 25.0,
                                              ),
                                              Text('Production method'),
                                              SizedBox(
                                                width: 125.0,
                                              ),
                                              Text(
                                                '100% handmade.',
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 15.0, right: 15.0),
                                            child: Divider(
                                              color: Colors.black26,
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              SizedBox(
                                                width: 25.0,
                                                height: 25.0,
                                              ),
                                              Text('Material'),
                                              SizedBox(
                                                width: 160.0,
                                              ),
                                              Text(
                                                'Gold and Glass crafting',
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 15.0, right: 15.0),
                                            child: Divider(
                                              color: Colors.black26,
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              SizedBox(
                                                width: 25.0,
                                                height: 25.0,
                                              ),
                                              Text('Strap color'),
                                              SizedBox(
                                                width: 220.0,
                                              ),
                                              Text(
                                                'Gold Color',
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 15.0, right: 15.0),
                                            child: Divider(
                                              color: Colors.black26,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(color: Colors.amber),
                                  ],
                                  onChange: (index) => print(index),
                                ),
                              ),
                              Text(
                                'Similar products',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                child: itemsList3(),
                              ),
                            ],
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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.bookmark_border_sharp), onPressed: () {}),
            addButton(),
            // Spacer(),

            IconButton(icon: Icon(Icons.screen_share), onPressed: () {}),
            // IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
