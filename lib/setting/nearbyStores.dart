import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearbyStores extends StatefulWidget {
  @override
  _NearbyStoresState createState() => _NearbyStoresState();
}

class _NearbyStoresState extends State<NearbyStores> {
  Completer<GoogleMapController> _controller = Completer();
  Container showMap() {
    LatLng latLng = LatLng(13.856656, 100.584391);
    CameraPosition cameraPosition = CameraPosition(
      target: latLng,
      zoom: 16.0,
    );
    return Container(
      child: GoogleMap(
        initialCameraPosition: cameraPosition,
        mapType: MapType.normal,
        onMapCreated: (controller) {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: showMap(),
            )
          ],
        ),
      ),
    );
  }
}
