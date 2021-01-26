import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:newflutter/screens/register.dart';
import 'package:newflutter/screens/signIn.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  //step 1
  List<Slide> slides = new List();
  //step 2
  Function goToTab;
  //step 3
  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        centerWidget: Column(
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
        // colorBegin: Colors.black,
      ),
      // Colors.black,
    );
    slides.add(
      new Slide(
        centerWidget: Column(
          children: <Widget>[
            showText2(),
            showText3(),

            showPrice2(),
            showImage2(),
            SizedBox(
              height: 80.0,
            ),

            showButton(),
            // Align(
            //   alignment: Alignment.center,
            //   child: showText(),
            // )
          ],
        ),
      ),
    );
    slides.add(
      new Slide(
        centerWidget: Column(
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
    );
  }

  // 4 Step: Create Other functions
  void onDonePress() {
    // Back to the first tab
    this.goToTab(0);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }
  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xFFE49D4D),
      size: 35.0,
    );
  }

  // Widget renderDoneBtn() {
  //   return Icon(
  //     Icons.done,
  //     color: Color(0xffffcc5c),
  //   );
  // }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xFFF1B25F),
    );
  }

  // List<Widget> renderListCustomTabs() {
  //   List<Widget> tabs = new List();
  //   for (int i = 0; i < slides.length; i++) {
  //     Slide currentSlide = slides[i];
  //     tabs.add(
  //       Container(
  //         // width: 1024.0,
  //         // height: 1024.0,
  //         child: Container(
  //           margin: EdgeInsets.only(bottom: 30.0, top: 30.0),
  //           color: Colors.black,
  //           child: Image.asset(
  //             currentSlide.pathImage,
  //             width: 500.0,
  //             height: 400.0,
  //             fit: BoxFit.contain,
  //           ),
  //         ),
  //       ),
  //     );
  //   }
  //   return tabs;
  // }

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
    return
        // OutlineButton(
        //   child: Text('               Sign In               '),
        //   onPressed: () {},
        Row(
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
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Colors.black,
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
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Colors.black,
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
      // color: Colors.yellow.shade800,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Colors.black,
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: IntroSlider(
          // List slides
          slides: this.slides,

          // Skip button
          renderSkipBtn: this.renderSkipBtn(),
          colorSkipBtn: Color(0xFFD89E51),
          highlightColorSkipBtn: Color(0xFFFFB85C),

          // Next button
          renderNextBtn: this.renderNextBtn(),

          // // Done button
          // renderDoneBtn: this.renderDoneBtn(),
          // onDonePress: this.onDonePress,
          // colorDoneBtn: Color(0xffffcc5c),
          // highlightColorDoneBtn: Color(0xffffcc5c),

          // Dot indicator
          colorDot: Color(0xFF000000),
          sizeDot: 13.0,

          // // Tabs

          // Show or hide status bar
          shouldHideStatusBar: true,

          // On tab change completed
          onTabChangeCompleted: this.onTabChangeCompleted,
        ),
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     home: Scaffold(
//       body: SafeArea(
//           child: Container(
//         decoration: BoxDecoration(color: Colors.black),
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               showImage(),
//               showPrice(),
//               showText2(),
//               SizedBox(
//                 height: 10.0,
//               ),
//               showText(),
//               SizedBox(
//                 height: 80.0,
//               ),
//               showButton(),
//               // Align(
//               //   alignment: Alignment.center,
//               //   child: showText(),
//               // )
//             ],
//           ),
//         ),
//       )),
//     ),
//   );
// }
