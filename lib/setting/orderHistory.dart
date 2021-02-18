import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Center(
                child: Container(
                  padding: EdgeInsets.only(right: 50.0.w),
                  child: Text(
                    'Order History',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0.w,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              expandedHeight: mediaQuery.size.height / 10,
              backgroundColor: Colors.black,
              actions: <Widget>[],
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
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              'ORDER #21412',
                              style: TextStyle(
                                  color: shipping,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                    color: pasa,
                                    fontSize: 14.0.w,
                                    fontFamily: 'AvenirBook',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              'Placed On:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '23th of January',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text(
                              'Amount: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              new String.fromCharCodes(
                                new Runes(
                                  '\u0024230.99',
                                ),
                              ),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text(
                              'Status:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Text(
                              'Delivered',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20.0),
                          child: Divider(
                            color: Colors.black26,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              'ORDER #21403',
                              style: TextStyle(
                                  color: shipping,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                    color: pasa,
                                    fontSize: 14.0.w,
                                    fontFamily: 'AvenirBook',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              'Placed On: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '31st of December',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text(
                              'Amount: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 22.0,
                            ),
                            Text(
                              new String.fromCharCodes(
                                new Runes(
                                  '\u0024230.99',
                                ),
                              ),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text(
                              'Status:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Text(
                              'Delivered',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20.0),
                          child: Divider(
                            color: Colors.black26,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              'ORDER #21412',
                              style: TextStyle(
                                  color: shipping,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                    color: pasa,
                                    fontSize: 14.0.w,
                                    fontFamily: 'AvenirBook',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              'Placed On: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '31st of December',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text(
                              'Amount: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 22.0,
                            ),
                            Text(
                              new String.fromCharCodes(
                                new Runes(
                                  '\u002499.00',
                                ),
                              ),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text(
                              'Status:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Text(
                              'Delivered',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20.0),
                          child: Divider(
                            color: Colors.black26,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              'ORDER #21358',
                              style: TextStyle(
                                  color: shipping,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                    color: pasa,
                                    fontSize: 14.0.w,
                                    fontFamily: 'AvenirBook',
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              'Placed On: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '14th of November',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text(
                              'Amount: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 22.0,
                            ),
                            Text(
                              new String.fromCharCodes(
                                new Runes(
                                  '\u0024599.00',
                                ),
                              ),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text(
                              'Status:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Text(
                              'Delivered',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20.0),
                          child: Divider(
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
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
