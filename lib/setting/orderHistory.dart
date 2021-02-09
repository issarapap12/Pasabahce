import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';

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
                child: Text(
                  'Order History',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
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
                                color: Colors.grey,
                              ),
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
                                ),
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
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('23th of January'),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text('Amount: '),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              new String.fromCharCodes(
                                new Runes('\u0024230.99'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text('Status:'),
                            SizedBox(
                              width: 30.0,
                            ),
                            Text('Delivered'),
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
                                color: Colors.grey,
                              ),
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
                                ),
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
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('31st of December'),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text('Amount: '),
                            SizedBox(
                              width: 22.0,
                            ),
                            Text(
                              new String.fromCharCodes(
                                new Runes('\u0024230.99'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text('Status:'),
                            SizedBox(
                              width: 35.0,
                            ),
                            Text('Delivered'),
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
                                color: Colors.grey,
                              ),
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
                                ),
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
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('31st of December'),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text('Amount: '),
                            SizedBox(
                              width: 22.0,
                            ),
                            Text(
                              new String.fromCharCodes(
                                new Runes('\u002499.00'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text('Status:'),
                            SizedBox(
                              width: 35.0,
                            ),
                            Text('Delivered'),
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
                                color: Colors.grey,
                              ),
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
                                ),
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
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('14th of November'),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text('Amount: '),
                            SizedBox(
                              width: 22.0,
                            ),
                            Text(
                              new String.fromCharCodes(
                                new Runes('\u0024599.00'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
                            ),
                            Text('Status:'),
                            SizedBox(
                              width: 35.0,
                            ),
                            Text('Delivered'),
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
