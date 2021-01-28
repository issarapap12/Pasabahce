import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:newflutter/screens/alerts.dart';
import 'package:newflutter/screens/forgotPassword.dart';
import 'package:newflutter/screens/mainPage.dart';
import 'package:newflutter/screens/mainPage2.dart';
import 'package:newflutter/screens/register.dart';
import 'package:newflutter/screens/splash2.dart';
import 'package:newflutter/utils/my_navigator.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => MyNavigator.goToIntro(context));
  }

  bool _rememberMe = false;
  Widget userNameText() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Username or email',
        labelStyle: TextStyle(color: Colors.black54),
      ),
    );
  }

  Widget passwordText() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.black54),
      ),
    );
  }

  Widget titlePage() {
    return Text(
      'Let’s sign you in',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget detailPage() {
    return Text(
      'Welcome back, you’ve been missed!',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 15.0,
        color: Colors.grey,
        // fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget signInBtn() {
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

  Widget googleBtn() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(),
        SizedBox(
          width: 2.0,
        ),
        displayGoogle(),
      ],
    );
  }

  Widget facebookBtn() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(),
        SizedBox(
          width: 2.0,
        ),
        displayFacebook(),
      ],
    );
  }

  Widget displayGoogle() {
    return RaisedButton(
      color: Colors.yellow.shade800,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Colors.yellow.shade900,
        ),
      ),
      child: SignInButton(
        Buttons.Google,
        text: "Sign in with Google",
        onPressed: () {},
      ),
    );
  }

  Widget displayFacebook() {
    return RaisedButton(
        color: Colors.yellow.shade800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(
            color: Colors.yellow.shade900,
          ),
        ),
        child: SignInButton(
          Buttons.Facebook,
          text: "Sign in with Facebook",
          onPressed: () {},
        ));
  }

  Widget display3() {
    return RaisedButton(
      color: Color(0xFFD6A578),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Colors.yellow.shade900,
        ),
      ),
      child: Text(
        '               Sign IN               ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      onPressed: () {
        // print('You Click Sign IN');

        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MainPage2();
        }));
      },
    );
  }

  Widget bottomPage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.grey.shade400,
            // fontWeight: FontWeight.bold,
          ),
        ),
        signUp(),
      ],
    );
  }

  Widget forgetPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PasswordScreen();
          }));
        },
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
        ),
      ),
    );
  }

  Widget signUp() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Register();
          }));
        },
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Sign Up',
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            // style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 0.0, right: 183.0, bottom: 30.0),
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
                          return Splash2();
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
                  'Log In',
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
            flex: 1,
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
                    titlePage(),
                    detailPage(),
                    userNameText(),
                    passwordText(),
                    Row(
                      children: <Widget>[
                        _buildRememberMeCheckbox(),
                        SizedBox(
                          width: 80,
                        ),
                        forgetPassword(),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        signInBtn(),
                        SizedBox(
                          height: 50.0,
                        ),
                        googleBtn(),
                        facebookBtn(),
                        bottomPage(),
                      ],
                    )
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
