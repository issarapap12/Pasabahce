import 'package:flutter/material.dart';
import 'package:newflutter/screens/mainPage2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                    Navigator.of(context).pop(),
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return MainPage2();
                    //     },
                    //   ),
                    // ),
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
                Container(
                  padding: EdgeInsets.only(
                    right: 15.0,
                  ),
                  child: Text(
                    'My Vouchers ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0.w,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
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
                      height: 30.0.w,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20.0.w),
                          child: Text(
                            'ACTIVE VOUCHERS',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0.w,
                                fontFamily: 'AvenirBook',
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0.w,
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
                        Container(
                          padding: EdgeInsets.only(right: 175.0.w),
                          child: Text(
                            'USED VOUCHERS',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0.w,
                                fontFamily: 'AvenirBook',
                                fontWeight: FontWeight.normal),
                          ),
                        ),
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
