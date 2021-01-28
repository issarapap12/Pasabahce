import 'package:flutter/material.dart';

import 'package:newflutter/screens/signIn.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:newflutter/screens/splash2.dart';

import 'package:passwordfield/passwordfield.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

final formKey = GlobalKey<FormState>();
String nameString, emailString, passwordString, phoneString;
bool _showPassword = false;

Widget registerBtn() {
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
      text: "Sign up with Google",
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
        text: "Sign up with Facebook",
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
      '                  Sign Up                  ',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.0,
      ),
    ),
    onPressed: () {
      print('You Click Sign Up');
      // MaterialPageRoute materialPageRoute =
      //         MaterialPageRoute(builder: (BuildContext context) => SignIn());
      //     Navigator.of(context).push(materialPageRoute);
    },
  );
}

Widget nameText() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Username',
      labelStyle: TextStyle(color: Colors.black54),
    ),
  );
}

Widget emailText() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Email',
      labelStyle: TextStyle(color: Colors.black54),
    ),
    validator: (String value) {
      if (!((value.contains('@')) && (value.contains('.')))) {
        return 'Please Type Email in Email Format Exp. you@email.com';
      } else {
        return null;
      }
    },
  );
}

Widget passwordText() {
  return PasswordField(
    color: Colors.black,
    hasFloatingPlaceholder: true,
    suffixIcon: Icon(
      Icons.remove_red_eye,
    ),
  );
}

Widget phoneText() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Phone',
      labelStyle: TextStyle(color: Colors.black54),
    ),
  );
}

Widget titlePage() {
  return Text(
    'Create your account',
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
    'After your registration is complete, you can see our opportunity products.',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 15.0,
      color: Colors.grey,
      // fontWeight: FontWeight.bold,
    ),
  );
}

Widget signIn(BuildContext context) {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () {
        Text('data');
        // BuildContext context;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return SignIn();
            },
          ),
        );
      },
      padding: EdgeInsets.only(right: 10.0),
      child: Text(
        'Sign In',
      ),
    ),
  );
}

Widget bottomPage(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Already have an account?',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.grey.shade400,
          // fontWeight: FontWeight.bold,
        ),
      ),
      signIn(context),
    ],
  );
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 0.0, right: 175.0, bottom: 30.0),
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
                  'Register',
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
                    nameText(),
                    emailText(),
                    passwordText(),
                    phoneText(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        registerBtn(),
                        SizedBox(
                          height: 35.0,
                        ),
                        googleBtn(),
                        facebookBtn(),
                        SizedBox(
                          height: 30.0,
                        ),
                        bottomPage(context),
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
