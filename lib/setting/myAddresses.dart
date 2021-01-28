import 'package:flutter/material.dart';

class MyAddress extends StatefulWidget {
  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
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
                                  Text('HOME ADDRESS'),
                                  SizedBox(
                                    width: 150.0,
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Change',
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
                                    'Dereboyu Cad. 23,',
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('34410 - Istanbul/Türkiye'),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                ],
                              ),
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
                                  Text('WORK ADDRESS'),
                                  SizedBox(
                                    width: 150.0,
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Change, ',
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
                                    'Dereboyu Cad. 23,',
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('34410 - Istanbul/Türkiye'),
                                ],
                              )
                            ],
                          ),
                          // Stack(
                          //   children: <Widget>[
                          //     ListView.builder(
                          //       itemCount: 50,
                          //       itemBuilder: (context, index) {
                          //         return Container(
                          //           height: 30,
                          //           padding:
                          //               EdgeInsets.symmetric(horizontal: 20),
                          //           child: Text('$index'),
                          //         );
                          //       },
                          //     ),
                          //     Align(
                          //       alignment: Alignment.bottomCenter,
                          //       child: Container(
                          //         margin: EdgeInsets.symmetric(
                          //           horizontal: 20,
                          //           vertical: 40,
                          //         ),
                          //         width: double.infinity,
                          //         child: FlatButton(
                          //           child: Text(
                          //             'FlatButton',
                          //             style: TextStyle(
                          //               fontSize: 24,
                          //             ),
                          //           ),
                          //           onPressed: () => {},
                          //           color: Colors.amber,
                          //           textColor: Colors.white,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
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
