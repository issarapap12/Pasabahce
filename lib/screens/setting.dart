import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newflutter/setting/latestArticles.dart';
import 'package:newflutter/setting/myAddresses.dart';
import 'package:newflutter/setting/myCard.dart';
import 'package:newflutter/setting/nearbyStores.dart';
import 'package:newflutter/setting/orderHistory.dart';
import 'package:newflutter/setting/settingsIn.dart';
import 'package:newflutter/setting/vouchers.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  Widget imageProfile(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            backgroundImage: _imageFile == null
                ? AssetImage(
                    'image/cat.jpg',
                  )
                : FileImage(File(_imageFile.path)),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet(context)),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.amber,
                size: 28.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile Photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text("Camera"),
              ),
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text("Image"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 0.0, right: 0.0, bottom: 30.0),
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
                    imageProfile(context),

                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          0.0,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            // leading: Icon(Icons.navigate_next),
                            title: Text("Order History"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              var route = MaterialPageRoute(
                                  builder: (context) => OrderHistory());
                              Navigator.of(context).push(route);
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                          ListTile(
                            // leading: Icon(Icons.navigate_next),
                            title: Text("My Addresses"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              var route = MaterialPageRoute(
                                  builder: (context) => MyAddress());
                              Navigator.of(context).push(route);
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                          ListTile(
                            // leading: Icon(Icons.navigate_next),
                            title: Text("My Cards"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              var route = MaterialPageRoute(
                                  builder: (context) => MyCard());
                              Navigator.of(context).push(route);
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                          ListTile(
                            // leading: Icon(Icons.navigate_next),
                            title: Text("Vouchers"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              var route = MaterialPageRoute(
                                  builder: (context) => Vouchers());
                              Navigator.of(context).push(route);
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                          ListTile(
                            // leading: Icon(Icons.navigate_next),
                            title: Text("Nearby Stores"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              var route = MaterialPageRoute(
                                  builder: (context) => NearbyStores());
                              Navigator.of(context).push(route);
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                          ListTile(
                            // leading: Icon(Icons.navigate_next),
                            title: Text("Latest Articles"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              var route = MaterialPageRoute(
                                  builder: (context) => LatestArticles());
                              Navigator.of(context).push(route);
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                          ListTile(
                            // leading: Icon(Icons.navigate_next),
                            title: Text("Settings"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              var route = MaterialPageRoute(
                                  builder: (context) => SettingsIn());
                              Navigator.of(context).push(route);
                            },
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
