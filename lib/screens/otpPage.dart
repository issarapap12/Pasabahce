import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

class OTPPAGE extends StatefulWidget {
  @override
  _OTPPAGEState createState() => _OTPPAGEState();
}

class _OTPPAGEState extends State<OTPPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Enter the 4 digit code sent to:'),
            Text('1 222 555 6677'),
            Text(
              "We've sent a 4 digit code to your phone number. Please enter the verification code.",
            ),
            VerificationCodeInput(
              keyboardType: TextInputType.number,
              length: 4,
              onCompleted: (String value) {
                print(value);
              },
            ),
            // PinEntryTextField(
            //   showFieldAsBox: true,
            //   onSubmit: (String pin) {
            //     showDialog(
            //         context: context,
            //         builder: (context) {
            //           return AlertDialog(
            //             title: Text('Pin'),
            //             content: Text('data'),
            //           );
            //         });
            //   },
            // ),

            // Container(
            //     height: 64.0,
            //     width: 56.0,
            //     child: Card(
            //         color: Color.fromRGBO(173, 179, 191, 0.7),
            //         child: Padding(
            //             padding: EdgeInsets.only(left: 10.0, right: 10.0),
            //             child: TextEditorForPhoneVerify())))
          ],
        ),
      ),
    );
  }
}

class TextEditorForPhoneVerify extends StatelessWidget {
  final TextEditingController code;

  TextEditorForPhoneVerify(this.code);

  @override
  Widget build(BuildContext context) {
    return TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: this.code,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            hintText: "*",
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)));
  }
}
