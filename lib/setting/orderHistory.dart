import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 0.0, right: 0.0, bottom: 60.0),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0),
              padding: EdgeInsets.symmetric(horizontal: 0.0),
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
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          0.0,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: [
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text('ORDER #21412'),
                                  SizedBox(
                                    width: 150.0,
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                        color: Colors.amber,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Placed On: 23th of January',
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Amount: '),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(new String.fromCharCodes(
                                      new Runes('\u0024230.99'))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Status:'),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Text('Delivered'),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 15.0),
                                child: Divider(
                                  color: Colors.black26,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text('ORDER #21412'),
                                  SizedBox(
                                    width: 150.0,
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                        color: Colors.amber,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Placed On: 23th of January',
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Amount: '),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(new String.fromCharCodes(
                                      new Runes('\u0024230.99'))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Status:'),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Text('Delivered'),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 15.0),
                                child: Divider(
                                  color: Colors.black26,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text('ORDER #21412'),
                                  SizedBox(
                                    width: 150.0,
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                        color: Colors.amber,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Placed On: 23th of January',
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Amount: '),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(new String.fromCharCodes(
                                      new Runes('\u0024230.99'))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Status:'),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Text('Delivered'),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 15.0),
                                child: Divider(
                                  color: Colors.black26,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text('ORDER #21412'),
                                  SizedBox(
                                    width: 150.0,
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                        color: Colors.amber,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Placed On: 23th of January',
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Amount: '),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(new String.fromCharCodes(
                                      new Runes('\u0024230.99'))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Status:'),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Text('Delivered'),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Items List Container
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
