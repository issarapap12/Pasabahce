import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Sotraia extends StatefulWidget {
  @override
  _SotraiaState createState() => _SotraiaState();
}

class _SotraiaState extends State<Sotraia> {
  Widget showImage() {
    return Container(
      width: 450.0,
      height: 350.0,
      child: Image.asset('image/Rectangle89.png'),
    );
  }

  Widget showText() {
    return Text(
      'Soteria Vase',
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
      '€2950',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.orange.shade800,
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

  Widget ratingBar() {
    return Center(
      child: RatingBar.builder(
        initialRating: 4,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(
          horizontal: 3.0,
        ),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
          size: 3.0,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    );
  }

  Widget detailPage() {
    return Text(
      'The Virgin Mary in the “Deesis” scene in the south gallery of Hagia Sophia is depicted on the Hagia Sophia Mosaic Vase.',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(),

        // automaticallyImplyLeading: false,
        // elevation: 5.0,
        // leading: Icon(
        //   Icons.menu,
        //   color: Colors.black,
        // ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        // padding: EdgeInsets.all(5.0),
        children: <Widget>[
          showImage(),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                    SizedBox(
                      height: 30.0,
                    ),
                    showText(),
                    Row(
                      children: [
                        ratingBar(),
                        Text(
                          '1.248 Reviews',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ],
                    ),
                    detailPage(),
                    showPrice(),
                    SizedBox(
                      height: 80.0,
                    ),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.bookmark),
                              SizedBox(
                                width: 30.0,
                              ),
                              showButton(),
                              SizedBox(
                                width: 30.0,
                              ),
                              Icon(Icons.share),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // tab(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
