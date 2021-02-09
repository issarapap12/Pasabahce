import 'package:flutter/material.dart';
import 'package:newflutter/screens/loading.dart';
import 'package:newflutter/screens/mainPage.dart';
import 'package:newflutter/screens/mainPage2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newflutter/screens/signIn.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:newflutter/screens/splash2.dart';

import 'package:passwordfield/passwordfield.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

final formKey = GlobalKey<FormState>();

bool _showPassword = false;

class _RegisterState extends State<Register> {
  String nameString, emailString, passwordString, phoneString;
  final formKey = GlobalKey<FormState>();
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
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return MainPage2();
              },
            ),
          );
        },
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'image/googleButton.png',
              width: 240.0,
              height: 44.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget displayFacebook() {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return MainPage2();
              },
            ),
          );
        },
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'image/facebookButton.png',
              width: 240.0,
              height: 44.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget display3() {
    return Container(
      child: InkWell(
        onTap: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            print(
              'name = $nameString, email = $emailString , password = $passwordString , phone = $phoneString',
            );
            registerThread();
          }
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return Loading();
          //     },
          //   ),
          // );
        },
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'image/SignUpButton.png',
              width: 240.0,
              height: 44.0,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerThread() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth
        .createUserWithEmailAndPassword(
      email: emailString,
      password: passwordString,
    )
        .then((response) {
      print('Register Success');
    }).catchError((response) {
      String title = response.code;
      String message = response.message;
      print('title = $title,message = $message');
    });
  }

  Widget nameText() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Username',
        labelStyle: TextStyle(color: Colors.black54),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please Fill Your Name in the Blank';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        nameString = value.trim(); //ตัดช่องว่างทิ้ง
      },
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
      onSaved: (String value) {
        emailString = value.trim();
      },
    );
  }

  Widget passwordText() {
    return TextFormField(
      // keyboardType:TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.black54),
      ),
      validator: (String value) {
        if (value.length < 6 && value.length > 20) {
          return 'Password More 20 Charactor';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        passwordString = value.trim();
      },
    );

    // );
    // PasswordField(
    //   color: Colors.black,
    //   hasFloatingPlaceholder: true,
    //   suffixIcon: Icon(
    //     Icons.remove_red_eye,
    //   ),
    // );
  }

  Widget phoneText() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Phone',
        labelStyle: TextStyle(color: Colors.black54),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please Fill your phone in the Blank';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        phoneString = value.trim(); //ตัดช่องว่างทิ้ง
      },
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
                child: Form(
                  key: formKey,
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
                          SizedBox(
                            height: 20.0,
                          ),
                          facebookBtn(),
                          SizedBox(
                            height: 20.0,
                          ),
                          bottomPage(context),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
