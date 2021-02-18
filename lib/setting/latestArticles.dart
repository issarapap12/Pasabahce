import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/screens/mainPage2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                Container(
                  padding: EdgeInsets.only(right: 10.0.w),
                  child: Text(
                    ' Latest Articles ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0.w,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
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
                  padding: EdgeInsets.only(top: 30.0),
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              top: 0.0, left: 10.0, right: 10.0, bottom: 0.0),
                          child: Stack(
                            children: <Widget>[
                              Image.asset(
                                'image/Photo.png',
                                width: 315.w,
                                height: 200.w,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 0.0,
                                  left: 60.0.w,
                                  right: 0.0,
                                  bottom: 0.0,
                                ),
                                child: Image.asset(
                                  'image/Rectangle89.png',
                                  width: 212.0.w,
                                  height: 212.0.w,
                                ),
                              ),
                              Positioned(
                                bottom: 20.0,
                                right: 20.0,
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'image/favorite.png',
                                    width: 30.0.w,
                                    height: 30.0.w,
                                  ),
                                ),
                              )
                            ],
                          ),
                          // child: itemsList(),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25.0.w, right: 25.0.w),
                          child: Text(
                            '“Soteria” Vase buy in the next year',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0.w,
                                fontFamily: 'AvenirHeavy',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25.w, right: 25.w),
                          child: Row(
                            children: [
                              Icon(Icons.lock_clock),
                              Text(
                                '24th February 2020',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0.w,
                                    fontFamily: 'AvenirBook',
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25.w, right: 25.w),
                          child: Text(
                            'Flasks are vessels that utilised during military service or on journeys, carried hanging from the waist or the neck….',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0.w,
                                fontFamily: 'AvenirBook',
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  'Discover more >>',
                                  style: TextStyle(
                                      color: pasa,
                                      fontSize: 14.0.w,
                                      fontFamily: 'AvenirBook',
                                      fontWeight: FontWeight.normal),
                                ),
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
                              Image.asset(
                                'image/Photo.png',
                                width: 315.w,
                                height: 200.w,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 0.0,
                                  left: 60.0,
                                  right: 0.0,
                                  bottom: 0.0,
                                ),
                                child: Image.asset(
                                  'image/Rectangle86.png',
                                  width: 212.0.w,
                                  height: 212.0.w,
                                ),
                              ),
                              Positioned(
                                bottom: 20.0,
                                right: 20.0,
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'image/favorite.png',
                                    width: 30.0.w,
                                    height: 30.0.w,
                                  ),
                                ),
                              )
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
                        Container(
                          padding: EdgeInsets.only(left: 25.w, right: 25.w),
                          child: Text(
                            '“Soteria” Vase buy in the next year',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0.w,
                                fontFamily: 'AvenirHeavy',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25.0.w),
                          child: Row(
                            children: [
                              Icon(Icons.lock_clock),
                              Text(
                                '24th February 2020',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0.w,
                                    fontFamily: 'AvenirBook',
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25.0.w, right: 25.0.w),
                          child: Text(
                            'Flasks are vessels that utilised during military service or on journeys, carried hanging from the waist or the neck….',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0.w,
                                fontFamily: 'AvenirBook',
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    left: 10.0.w, right: 25.0.w),
                                child: Text(
                                  'Discover more >>',
                                  style: TextStyle(
                                      color: pasa,
                                      fontSize: 14.0.w,
                                      fontFamily: 'AvenirBook',
                                      fontWeight: FontWeight.normal),
                                ),
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
