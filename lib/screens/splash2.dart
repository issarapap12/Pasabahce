import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/screens/mainPage2.dart';
import 'package:newflutter/screens/register.dart';
import 'package:newflutter/screens/signIn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash2 extends StatefulWidget {
  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  PageController pageController = PageController(initialPage: 0);
  PageController _pageController = new PageController();
  double currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page;
      });
    });
    checkStatus().then((value) {
      if (value)
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => MainPage2()),
            (Route<dynamic> route) => false);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  Future<bool> checkStatus() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    var user = firebaseAuth.currentUser;
    return user != null;
  }

  Widget showImage() {
    return Container(
      width: 1.sh / 2,
      height: 1.sh / 2,
      child: Image.asset('image/Gulcehre_ibrik2.png'),
    );
  }

  Widget showImage2() {
    return Container(
      width: 1.sh / 2,
      height: 1.sh / 2,
      child: Image.asset('image/SoteriaVazo.png'),
    );
  }

  Widget showImage3() {
    return Container(
      width: 1.sh / 2,
      height: 1.sh / 2,
      child: Image.asset('image/MysticalVase.png'),
    );
  }

  Widget showPrice2() {
    return Text(
      '€3450',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20.0.w,
          color: Colors.white,
          fontFamily: 'AvenirHeavy',
          fontWeight: FontWeight.bold),
    );
  }

  Widget showPrice() {
    return Text(
      '€5650',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20.w,
          color: Colors.white,
          fontFamily: 'AvenirHeavy',
          fontWeight: FontWeight.bold),
    );
  }

  Widget showPrice3() {
    return Text(
      '€3150',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20.w,
          color: Colors.white,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.bold),
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
      'HISYORY CULTURE GLASS',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 13.0.w,
          color: Colors.white,
          fontFamily: 'AvenirBook',
          fontWeight: FontWeight.normal),
    );
  }

  Widget showText3() {
    return Text(
      'Hagia Sophia    Deesis Mosaic Vase',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 40.w,
          color: Colors.white,
          fontFamily: 'AvenirHeavy',
          fontWeight: FontWeight.bold),
    );
  }

  Widget showText4() {
    return Text(
      'Mystical Vase Limited Edition',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 40.w,
          color: Colors.white,
          fontFamily: 'AvenirHeavy',
          fontWeight: FontWeight.bold),
    );
  }

  Widget display() {
    return ButtonTheme(
      minWidth: 244.0.w,
      height: 44.0.w,
      child: RaisedButton(
        color: splashColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0.w),
          side: BorderSide(
            color: splashColor,
          ),
        ),
        child: Text(
          'MASTER BUTTON',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.0.w,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          print('You Click S');
        },
      ),
    );
  }

  Widget display3() {
    return ButtonTheme(
      minWidth: 244.0.w,
      height: 44.0.w,
      child: RaisedButton(
        color: splashColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0.w),
          side: BorderSide(
            color: pasa,
          ),
        ),
        child: Text(
          'CREATIVE ACCOUNT',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.w,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          print('You Click Creative');
          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => Register());
          Navigator.of(context).push(materialPageRoute);
        },
      ),
    );
  }

  Widget display2() {
    return ButtonTheme(
      height: 44.0.w,
      minWidth: 244.0.w,
      child: OutlineButton(
        borderSide: BorderSide(color: Color(0xFFFFFFFF)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: BorderSide(
            color: splashColor,
          ),
        ),
        child: Text(
          'SIGN IN',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.w,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          print('You Click Sign In');
          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => SignIn());
          Navigator.of(context).push(materialPageRoute);
        },
      ),
    );
  }

  Widget showText() {
    return Text(
      'Gülçehre İbrik Limited Edition',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40.0.w,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: 'Avenir',
      ),
    );
  }

  Widget smooth() {
    return SmoothPageIndicator(
      controller: _pageController,
      count: 3,
      effect: const WormEffect(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            children: <Widget>[
              Container(
                // decoration: BoxDecoration(color: Colors.black),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60.0.w,
                      ),
                      Column(
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
                    ],
                  ),
                ),
                color: Colors.black,
              ),
              Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 100.0.w,
                      ),
                      showText2(),
                      showText3(),
                      showPrice2(),
                      showImage2(),
                      SizedBox(
                        height: 20.0.w,
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
                      SizedBox(
                        height: 50.0.w,
                      ),
                      showImage3(),
                      showPrice3(),
                      showText2(),
                      SizedBox(
                        height: 5.0.w,
                      ),
                      showText4(),
                      SizedBox(
                        height: 5.0.w,
                      ),
                      signInButton(),
                      SizedBox(
                        height: 10.0.w,
                      ),
                      creativeButton(),
                    ],
                  ),
                ),
                color: Colors.black,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 25.0.w,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    dotHeight: 6.0.w,
                    dotWidth: 6.0.w,
                    dotColor: Colors.grey,
                    activeDotColor: pasa,
                    spacing: 10.0.w,
                    radius: 20.0.w,
                  ),
                  // effect: WormEffect(
                  //   // spacing: 10.0.w,
                  //   // radius: 100.0.w,
                  //   dotWidth: 38.0.w,
                  //   dotHeight: 6.0.w,
                  //   // paintStyle: PaintingStyle.fill,
                  //   // strokeWidth: 70,
                  //   dotColor: Colors.grey,
                  //   activeDotColor: pasa,
                  // ),
                  onDotClicked: (index) => _pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInCubic,
                  ),
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
