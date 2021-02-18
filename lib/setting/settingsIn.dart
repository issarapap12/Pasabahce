import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/screens/mainPage2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsIn extends StatefulWidget {
  @override
  _SettingsInState createState() => _SettingsInState();
}

class _SettingsInState extends State<SettingsIn> {
  bool toggleValue = false;
  String enabled = "Enabled";
  String unabled = "Disable";

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
                    'SETTINGS',
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
                    child: ListView(
                      padding: EdgeInsets.only(top: 25.0),
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              0.0,
                            ),
                          ),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 25.0,
                                        ),
                                        Text(
                                          'LANGUAGE',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13.0.w,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.normal),
                                        ),
                                        SizedBox(
                                          width: 195.0,
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
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 25.0,
                                        ),
                                        Text(
                                          'English',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0.w,
                                              fontFamily: 'AvenirBook',
                                              fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 15.0, right: 15.0),
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
                                              'Password',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0.w,
                                                  fontFamily: 'AvenirBook',
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            SizedBox(
                                              width: 205.0,
                                            ),
                                            FlatButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Change',
                                                style: TextStyle(
                                                    color: pasa,
                                                    fontSize: 14.0.w,
                                                    fontFamily: 'AvenirBook',
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            SizedBox(
                                              width: 25.0,
                                            ),
                                            Text(
                                              '• • • • • • • • • • • • • • • • • • • •',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0.w,
                                                  fontFamily: 'AvenirBook',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 15.0, right: 15.0),
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
                                              'Location',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0.w,
                                                  fontFamily: 'AvenirBook',
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            SizedBox(
                                              width: 205.0.w,
                                            ),
                                            FlatButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Edit',
                                                style: TextStyle(
                                                    color: pasa,
                                                    fontSize: 14.0.w,
                                                    fontFamily: 'AvenirBook',
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            SizedBox(
                                              width: 25.0,
                                            ),
                                            Text(
                                              'Istanbul, TR',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0.w,
                                                  fontFamily: 'AvenirBook',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 15.0, right: 15.0),
                                          child: Divider(
                                            color: Colors.black26,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 25.0,
                                            ),
                                            Text(
                                              "Receive Notifications",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0.w,
                                                  fontFamily: 'AvenirBook',
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            SizedBox(
                                              width: 160.0,
                                            ),
                                            AnimatedContainer(
                                              duration: Duration(
                                                milliseconds: 1000,
                                              ),
                                              height: 20.0,
                                              width: 36.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                color: (toggleValue)
                                                    ? pasa
                                                    // .withOpacity(0.5)
                                                    : Colors.grey[400]
                                                        .withOpacity(0.5),
                                              ),
                                              child: Stack(
                                                children: <Widget>[
                                                  AnimatedPositioned(
                                                    duration: Duration(
                                                      microseconds: 1000,
                                                    ),
                                                    curve: Curves.easeIn,
                                                    top: 3.0,
                                                    left: toggleValue
                                                        ? 15.0
                                                        : 0.0,
                                                    right: toggleValue
                                                        ? 0.0
                                                        : 15.0,
                                                    child: InkWell(
                                                      onTap: toggleButton,
                                                      child: AnimatedSwitcher(
                                                        duration: Duration(
                                                          milliseconds: 1000,
                                                        ),
                                                        transitionBuilder:
                                                            (Widget child,
                                                                Animation<
                                                                        double>
                                                                    animation) {
                                                          return ScaleTransition(
                                                            child: child,
                                                            scale: animation,
                                                          );
                                                        },
                                                        child: toggleValue
                                                            ? Icon(
                                                                Icons.circle,
                                                                color: Colors
                                                                    .white,
                                                                size: 16.0,
                                                                key:
                                                                    UniqueKey(),
                                                              )
                                                            : Icon(
                                                                Icons.circle,
                                                                color: Colors
                                                                    .white,
                                                                size: 16.0,
                                                                key:
                                                                    UniqueKey(),
                                                              ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            SizedBox(
                                              width: 25.0,
                                              height: 30.0,
                                            ),
                                            Text(
                                              'Enabled',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0.w,
                                                  fontFamily: 'AvenirBook',
                                                  fontWeight:
                                                      FontWeight.normal),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: Divider(
                                        color: Colors.black26,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.0,
                                        ),
                                        Text(
                                          "Receive Newsletters",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0.w,
                                              fontFamily: 'AvenirBook',
                                              fontWeight: FontWeight.normal),
                                        ),
                                        SizedBox(
                                          width: 165.0,
                                        ),
                                        AnimatedContainer(
                                          duration: Duration(
                                            milliseconds: 1000,
                                          ),
                                          height: 20.0,
                                          width: 36.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: toggleValue
                                                ? pasa
                                                // .withOpacity(0.5)
                                                : Colors.grey[400]
                                                    .withOpacity(0.5),
                                          ),
                                          child: Stack(
                                            children: <Widget>[
                                              AnimatedPositioned(
                                                duration: Duration(
                                                  microseconds: 1000,
                                                ),
                                                curve: Curves.easeIn,
                                                top: 3.0,
                                                left: toggleValue ? 15.0 : 0.0,
                                                right: toggleValue ? 0.0 : 15.0,
                                                child: InkWell(
                                                  onTap: toggleButton,
                                                  child: AnimatedSwitcher(
                                                    duration: Duration(
                                                      milliseconds: 1000,
                                                    ),
                                                    transitionBuilder:
                                                        (Widget child,
                                                            Animation<double>
                                                                animation) {
                                                      return ScaleTransition(
                                                        child: child,
                                                        scale: animation,
                                                      );
                                                    },
                                                    child: toggleValue
                                                        ? Icon(
                                                            Icons.circle,
                                                            color: Colors.white,
                                                            size: 16.0,
                                                            key: UniqueKey(),
                                                          )
                                                        : Icon(
                                                            Icons.circle,
                                                            color: Colors.white,
                                                            size: 16.0,
                                                            key: UniqueKey(),
                                                          ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 25.0,
                                          height: 35.0,
                                        ),
                                        Text(
                                          'Enabled',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0.w,
                                              fontFamily: 'AvenirBook',
                                              fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                        // Items List Container
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

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
