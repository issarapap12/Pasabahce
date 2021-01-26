import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:newflutter/screens/register.dart';
import 'package:newflutter/screens/signIn.dart';

class Splash2 extends StatefulWidget {
  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  PageController pageController = PageController(initialPage: 0);
  PageController _pageController = PageController();
  double currentPage = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page;
      });
    });
    super.initState();
  }

  Widget showImage() {
    return Container(
      width: 500.0,
      height: 400.0,
      child: Image.asset('image/Gulcehre_ibrik2.png'),
    );
  }

  Widget showImage2() {
    return Container(
      width: 500.0,
      height: 400.0,
      child: Image.asset('image/SoteriaVazo.png'),
    );
  }

  Widget showImage3() {
    return Container(
      width: 500.0,
      height: 400.0,
      child: Image.asset('image/MysticalVase.png'),
    );
  }

  Widget showPrice2() {
    return Text(
      '€3450',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    );
  }

  Widget showPrice() {
    return Text(
      '€5650',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    );
  }

  Widget showPrice3() {
    return Text(
      '€3150',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    );
  }

  Widget signInButton() {
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

  Widget creativeButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(),
        SizedBox(
          width: 2.0,
        ),
        display3(),
      ],
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(),
        SizedBox(
          width: 2.0,
        ),
        display(),
      ],
    );
  }

  Widget backButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(),
        SizedBox(
          width: 2.0,
        ),
        display(),
      ],
    );
  }

  Widget showText2() {
    return Text(
      'Hıstory Culture glass',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 10.0,
        color: Colors.grey,
      ),
    );
  }

  Widget showText3() {
    return Text(
      'Hagia Sophia Deesis Mosaic Vase',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
      ),
    );
  }

  Widget showText4() {
    return Text(
      'Mystical Vase Limited Edition',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
      ),
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
        '               master Button               ',
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

  Widget display3() {
    return RaisedButton(
      color: Color(0xFFD6A578),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Color(0xFF5F5D5D),
        ),
      ),
      child: Text(
        '               Creatıve account               ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      onPressed: () {
        print('You Click Creative');
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  Widget display2() {
    return OutlineButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Color(0xFFD6A578),
        ),
      ),
      child: Text(
        '                      Sign In                     ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      onPressed: () {
        print('You Click Sign In');
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => SignIn());
        Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  Widget showText() {
    return Text(
      'Gülçehre İbrik Limited Edition',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Test'),
      // ),
      body: PageView(
        controller: _pageController,
        pageSnapping: true,
        children: <Widget>[
          Container(
            // decoration: BoxDecoration(color: Colors.black),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showImage(),
                  showPrice(),
                  showText2(),
                  SizedBox(
                    height: 10.0,
                  ),
                  showText(),
                  SizedBox(
                    height: 80.0,
                  ),
                  showButton(),
                ],
              ),
            ),
            color: Colors.black,
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showText2(),
                  showText3(),
                  showPrice2(),
                  showImage2(),
                  SizedBox(
                    height: 80.0,
                  ),
                  showButton(),
                ],
              ),
            ),
            color: Colors.black,
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showImage3(),
                  showPrice3(),
                  showText2(),
                  SizedBox(
                    height: 10.0,
                  ),
                  showText4(),
                  SizedBox(
                    height: 80.0,
                  ),
                  signInButton(),
                  SizedBox(
                    height: 10.0,
                  ),
                  creativeButton(),
                ],
              ),
            ),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
