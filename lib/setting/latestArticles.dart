import 'package:flutter/material.dart';
import 'package:newflutter/screens/mainPage2.dart';

class LatestArticles extends StatefulWidget {
  @override
  _LatestArticlesState createState() => _LatestArticlesState();
}

class _LatestArticlesState extends State<LatestArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 0.0, right: 140.0, bottom: 30.0),
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
                          return MainPage2();
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
                  ' Latest Articles ',
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
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              top: 0.0, left: 10.0, right: 10.0, bottom: 0.0),
                          child: Stack(
                            children: <Widget>[
                              Image.asset('image/Photo.png'),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 0.0,
                                  left: 70.0,
                                  right: 0.0,
                                  bottom: 0.0,
                                ),
                                child: Image.asset(
                                  'image/Rectangle89.png',
                                  width: 240.0,
                                  height: 240.0,
                                ),
                              ),
                              Positioned(
                                bottom: 20.0,
                                right: 20.0,
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'image/favorite.png',
                                    width: 30.0,
                                    height: 30.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                          // child: itemsList(),
                        ),
                        Text('“Soteria” Vase buy in the next year'),
                        Row(
                          children: [
                            Icon(Icons.lock_clock),
                            Text('24th February 2020'),
                          ],
                        ),
                        Text(
                          'Flasks are vessels that utilised during military service or on journeys, carried hanging from the waist or the neck….',
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Discover more >>',
                                style: TextStyle(color: Colors.amber),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ), // Items List Container

                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              top: 0.0, left: 10.0, right: 10.0, bottom: 0.0),
                          child: Stack(
                            children: <Widget>[
                              Image.asset('image/Photo.png'),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 0.0,
                                  left: 70.0,
                                  right: 0.0,
                                  bottom: 0.0,
                                ),
                                child: Image.asset(
                                  'image/Rectangle86.png',
                                  width: 240.0,
                                  height: 240.0,
                                ),
                              ),
                              // Positioned(
                              //   bottom: 5.0,
                              //   right: 0.0,
                              //   left: 120.0,
                              //   child: InkWell(
                              //     onTap: () {},
                              //     child: Image.asset(
                              //       'image/favorite.png',
                              //       width: 30.0,
                              //       height: 30.0,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                          // child: itemsList(),
                        ),
                        Text('“Soteria” Vase buy in the next year'),
                        Row(
                          children: [
                            Icon(Icons.lock_clock),
                            Text('24th February 2020'),
                          ],
                        ),
                        Text(
                          'Flasks are vessels that utilised during military service or on journeys, carried hanging from the waist or the neck….',
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Discover more >>',
                                style: TextStyle(color: Colors.amber),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ), // Items List Container

                    Container(
                      margin: EdgeInsets.only(
                          top: 0.0, left: 30.0, right: 0.0, bottom: 30.0),
                      // child: itemsList3(),
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
