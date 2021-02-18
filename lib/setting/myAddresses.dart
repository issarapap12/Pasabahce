import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAddress extends StatefulWidget {
  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  Widget addBtn() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
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
    return ButtonTheme(
      minWidth: 240.0.w,
      height: 44.0.w,
      child: RaisedButton(
        color: pasa,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: BorderSide(
            color: pasa,
          ),
        ),
        child: Text(
          'Add another address',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.0.w,
              fontFamily: 'AvenirBook',
              fontWeight: FontWeight.normal),
        ),
        onPressed: () {
          // print('You Click Sign IN');

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return OTPPAGE();
          //     },
          //   ),
          // );
        },
      ),
    );
  }

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
              title: Row(
                children: <Widget>[
                  SizedBox(
                    width: 85.0,
                  ),
                  Text(
                    'My addresses',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0.w,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ],
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
                              'HOME ADDRESS',
                              style: TextStyle(
                                  color: Colors.black,
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
                                'Change',
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
                              'Dereboyu Cad. 23, 34410 - Istanbul/Türkiye',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
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
                              'HOME ADDRESS',
                              style: TextStyle(
                                  color: Colors.black,
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
                                'Change',
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
                              'Dereboyu Cad. 23, 34410 - Istanbul/Türkiye',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'AvenirBook',
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                              height: 30.0,
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
                        addBtn(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Container(
      //       padding:
      //           EdgeInsets.only(top: 60.0, left: 0.0, right: 0.0, bottom: 60.0),
      //     ),
      //     Expanded(
      //       child: Container(
      //         margin: EdgeInsets.symmetric(horizontal: 0.0),
      //         padding: EdgeInsets.symmetric(horizontal: 0.0),
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(20.0),
      //             topRight: Radius.circular(20.0),
      //           ),
      //         ),
      //         child: Center(
      //           child: ListView(
      //             children: <Widget>[
      //               Card(
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(
      //                     0.0,
      //                   ),
      //                 ),
      //                 child: Column(
      //                   children: <Widget>[
      //                     Column(
      //                       children: [
      //                         Container(
      //                           margin: const EdgeInsets.only(
      //                               left: 10.0, right: 15.0),
      //                           child: Divider(
      //                             color: Colors.black26,
      //                           ),
      //                         ),
      //                         Row(
      //                           children: <Widget>[
      //                             SizedBox(
      //                               width: 25.0,
      //                             ),
      //                             Text('HOME ADDRESS'),
      //                             SizedBox(
      //                               width: 150.0,
      //                             ),
      //                             FlatButton(
      //                               onPressed: () {
      //                                 // Navigator.push(context,
      //                                 //     MaterialPageRoute(builder: (context) {
      //                                 //   return MyLocation();
      //                                 // }));
      //                               },
      //                               child: Text(
      //                                 'Change',
      //                                 style: TextStyle(
      //                                   color: Colors.amber,
      //                                 ),
      //                               ),
      //                             )
      //                           ],
      //                         ),
      //                         Row(
      //                           children: <Widget>[
      //                             Text(
      //                               'Dereboyu Cad. 23,',
      //                               textAlign: TextAlign.left,
      //                             ),
      //                           ],
      //                         ),
      //                         Row(
      //                           children: [
      //                             Text('34410 - Istanbul/Türkiye'),
      //                             SizedBox(
      //                               width: 20.0,
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     ),
      //                     Column(
      //                       children: [
      //                         Container(
      //                           margin: const EdgeInsets.only(
      //                               left: 10.0, right: 15.0),
      //                           child: Divider(
      //                             color: Colors.black26,
      //                           ),
      //                         ),
      //                         Row(
      //                           children: <Widget>[
      //                             SizedBox(
      //                               width: 25.0,
      //                             ),
      //                             Text('WORK ADDRESS'),
      //                             SizedBox(
      //                               width: 150.0,
      //                             ),
      //                             FlatButton(
      //                               onPressed: () {
      //                                 // Navigator.push(context,
      //                                 //     MaterialPageRoute(builder: (context) {
      //                                 //   return MyLocation();
      //                                 // },
      //                                 // ),);
      //                               },
      //                               child: Text(
      //                                 'Change',
      //                                 style: TextStyle(
      //                                   color: Colors.amber,
      //                                 ),
      //                               ),
      //                             )
      //                           ],
      //                         ),
      //                         Row(
      //                           children: <Widget>[
      //                             Text(
      //                               'Dereboyu Cad. 23,',
      //                               textAlign: TextAlign.left,
      //                             ),
      //                           ],
      //                         ),
      //                         Row(
      //                           children: [
      //                             Text('34410 - Istanbul/Türkiye'),
      //                           ],
      //                         )
      //                       ],
      //                     ),
      //                     // Stack(
      //                     //   children: <Widget>[
      //                     //     ListView.builder(
      //                     //       itemCount: 50,
      //                     //       itemBuilder: (context, index) {
      //                     //         return Container(
      //                     //           height: 30,
      //                     //           padding:
      //                     //               EdgeInsets.symmetric(horizontal: 20),
      //                     //           child: Text('$index'),
      //                     //         );
      //                     //       },
      //                     //     ),
      //                     //     Align(
      //                     //       alignment: Alignment.bottomCenter,
      //                     //       child: Container(
      //                     //         margin: EdgeInsets.symmetric(
      //                     //           horizontal: 20,
      //                     //           vertical: 40,
      //                     //         ),
      //                     //         width: double.infinity,
      //                     //         child: FlatButton(
      //                     //           child: Text(
      //                     //             'FlatButton',
      //                     //             style: TextStyle(
      //                     //               fontSize: 24,
      //                     //             ),
      //                     //           ),
      //                     //           onPressed: () => {},
      //                     //           color: Colors.amber,
      //                     //           textColor: Colors.white,
      //                     //         ),
      //                     //       ),
      //                     //     ),
      //                     //   ],
      //                     // ),
      //                   ],
      //                 ),
      //               ),

      //               // Items List Container
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
