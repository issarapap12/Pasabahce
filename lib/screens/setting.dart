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
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              fontSize: 20.0.w,
              color: Colors.black,
              fontFamily: 'AvenirBook',
              fontWeight: FontWeight.bold,
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
                label: Text(
                  "Camera",
                  style: TextStyle(
                    fontSize: 14.0.w,
                    color: Colors.black,
                    fontFamily: 'AvenirBook',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text(
                  "Image",
                  style: TextStyle(
                    fontSize: 14.0.w,
                    color: Colors.black,
                    fontFamily: 'AvenirBook',
                    fontWeight: FontWeight.normal,
                  ),
                ),
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
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            new SliverAppBar(
              automaticallyImplyLeading: false,
              title: Center(
                child: Container(
                  padding: EdgeInsets.only(right: 5.w),
                  child: Text(
                    'Settings & More',
                    style: TextStyle(
                        fontSize: 13.0.w,
                        color: Colors.white,
                        fontFamily: 'AvenirBook',
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              expandedHeight: mediaQuery.size.height / 10,
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(9))),
            ),
            new SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: EdgeInsets.zero,
                    height: mediaQuery.size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
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
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 25.0,
                          ),
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
                                  title: Text(
                                    "Order History",
                                    style: TextStyle(
                                        fontSize: 14.0.w,
                                        color: Colors.black,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal),
                                  ),
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
                                  title: Text(
                                    "My Addresses",
                                    style: TextStyle(
                                        fontSize: 14.0.w,
                                        color: Colors.black,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal),
                                  ),
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
                                  title: Text(
                                    "My Cards",
                                    style: TextStyle(
                                        fontSize: 14.0.w,
                                        color: Colors.black,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal),
                                  ),
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
                                  title: Text(
                                    "Vouchers",
                                    style: TextStyle(
                                        fontSize: 14.0.w,
                                        color: Colors.black,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal),
                                  ),
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
                                  title: Text(
                                    "Nearby Stores",
                                    style: TextStyle(
                                        fontSize: 14.0.w,
                                        color: Colors.black,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal),
                                  ),
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
                                  title: Text(
                                    "Latest Articles",
                                    style: TextStyle(
                                        fontSize: 14.0.w,
                                        color: Colors.black,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal),
                                  ),
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
                                  title: Text(
                                    "Settings",
                                    style: TextStyle(
                                        fontSize: 14.0.w,
                                        color: Colors.black,
                                        fontFamily: 'AvenirBook',
                                        fontWeight: FontWeight.normal),
                                  ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             padding:
//                 EdgeInsets.only(top: 10.0, left: 0.0, right: 0.0, bottom: 50.0),
//           ),
//           Row(
//             children: <Widget>[
//               Container(
//                 child: Text(
//                   'Settings & More',
//                   style: TextStyle(
//                     fontSize: 13.0.w,
//                     color: Colors.white,
//                     fontFamily: 'AvenirBook',
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.symmetric(horizontal: 0.0),
//               padding: EdgeInsets.symmetric(horizontal: 0.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20.0),
//                   topRight: Radius.circular(20.0),
//                 ),
//               ),

//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
