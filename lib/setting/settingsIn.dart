import 'package:flutter/material.dart';
import 'package:newflutter/screens/mainPage2.dart';

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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 0.0, right: 170.0, bottom: 30.0),
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
                  'Settings',
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
                                  Text('LANGUAGE'),
                                  SizedBox(
                                    width: 195.0,
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
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text(
                                    'English',
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
                                      Text('Password'),
                                      SizedBox(
                                        width: 205.0,
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
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Text(
                                        '• • • • • • • • • • • • • • • • • • • •',
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
                                      Text('Location'),
                                      SizedBox(
                                        width: 216.0,
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(
                                            color: Colors.amber,
                                          ),
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
                                      Text("Receive Notifications"),
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
                                              ? Colors.amberAccent[100]
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
                                        height: 30.0,
                                      ),
                                      Text(
                                        'Enabled',
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
                                  Text("Receive Newsletters"),
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
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: toggleValue
                                          ? Colors.amberAccent[100]
                                          // .withOpacity(0.5)
                                          : Colors.grey[400].withOpacity(0.5),
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
                                              transitionBuilder: (Widget child,
                                                  Animation<double> animation) {
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
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ],
                          )
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

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
