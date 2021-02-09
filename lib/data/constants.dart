import 'package:flutter/material.dart';
import 'package:newflutter/itemdetail/godBowl.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color navigationColor = Color(0xFF6751B5);
Color gradientStartColor = Color(0xFF0050AC);
Color gradientEndColor = Color(0xFF9354B9);
Color pasa = Color.fromRGBO(204, 157, 118, 3);
Color superPasa = Color.fromRGBO(204, 157, 118, 8);

Widget showImage() {
  return Container(
    width: 450.0,
    height: 350.0,
    child: Image.asset('image/Rectangle85.png'),
  );
}

Widget showImageOv2() {
  return Stack(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(
          top: 180.0,
          bottom: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset(
                'image/Oval.png',
                width: 100.0,
                height: 100.0,
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget showImage2() {
  return Container(
    width: 450.0,
    height: 350.0,
    child: Image.asset('image/Rectangle86.png'),
  );
}

Widget showImage3() {
  return Container(
    width: 450.0,
    height: 350.0,
    child: Image.asset('image/Rectangle87.png'),
  );
}

Widget showImage4() {
  return Container(
    width: 450.0,
    height: 350.0,
    child: Image.asset('image/Rectangle89.png'),
  );
}

Widget showImage5() {
  return Container(
    width: 450.0,
    height: 350.0,
    child: Image.asset('image/Rectangle90.png'),
  );
}

Widget showImage6() {
  return Container(
    width: 450.0,
    height: 350.0,
    child: Image.asset('image/Gulcehre_ibrik2.png'),
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

Widget ratingBar() {
  return Center(
    child: RatingBar.builder(
      initialRating: 4,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 20.0,
      itemPadding: EdgeInsets.symmetric(
        horizontal: 3.0,
      ),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: pasa,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
  );
}

Container itemsList3(BuildContext context) {
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
