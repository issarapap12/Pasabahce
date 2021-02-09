import 'package:flutter/material.dart';
import 'package:newflutter/screens/mainPage2.dart';

class Vouchers extends StatefulWidget {
  @override
  _VouchersState createState() => _VouchersState();
}

class _VouchersState extends State<Vouchers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 0.0, right: 140.0, bottom: 30.0),
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
                          return MainPage2();
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
                  ' My Vouchers ',
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
                margin: EdgeInsets.symmetric(horizontal: 0.0),
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text('ACTIVE VOUCHERS'),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: 5.0,
                        ),
                        Image.asset(
                          'image/Voucher.png',
                          height: 92.0,
                          width: 315.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Image.asset(
                          'image/Voucher2.png',
                          height: 92.0,
                          width: 315.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Image.asset(
                          'image/Voucher3.png',
                          height: 92.0,
                          width: 315.0,
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text('USED VOUCHERS'),
                        SizedBox(
                          height: 20.0,
                        ),
                        Image.asset(
                          'image/Voucher4.png',
                          height: 92.0,
                          width: 315.0,
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
