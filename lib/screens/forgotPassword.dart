import 'package:flutter/material.dart';
import 'package:newflutter/screens/checkEmail.dart';
import 'package:newflutter/screens/loading.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  Widget titlePage() {
    return Text(
      'Forgot your password?',
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
      'Enter your email address and we will send you instructions on how to reset your password.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 15.0,
        color: Colors.grey,
        // fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget emailText() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email address',
        labelStyle: TextStyle(color: Colors.black54),
      ),
    );
  }

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
          '               Reset my password               ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        onPressed: () {
          print('You Click Sign Up');
          // navigateToSecondPage(BuildContext context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CheckEmail();
              },
            ),
          );
        }
        // },
        );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Reset password'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30.0),
          // decoration: BoxDecoration(color: Colors.black),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                titlePage(),
                detailPage(),
                emailText(),
                registerBtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
