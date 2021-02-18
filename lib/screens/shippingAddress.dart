import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingAddress extends StatefulWidget {
  @override
  _ShippingAddressState createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              // automaticallyImplyLeading: false,
              actions: <Widget>[
                // IconButton(
                //     icon: Icon(
                //       Icons.clear,
                //       size: 20.0.w,
                //     ),
                //     onPressed: () {
                //       Navigator.of(context).pop();
                //     }),
              ],
              floating: true,
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    padding: EdgeInsets.only(left: 32.0, right: 32.0),
                    child: Text(
                      'SHIPPING ADDRESS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0.w,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'Fill in the form below so we can know exactly',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0.w,
                            fontFamily: 'AvenirBook',
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        'where to ship your order.',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0.w,
                            fontFamily: 'AvenirBook',
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
              expandedHeight: mediaQuery.size.height / 5,
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(9))),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: mediaQuery.size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Center(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
