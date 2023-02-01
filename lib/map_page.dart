import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // in the below line, we are initializing our controller for google maps.
  Completer<GoogleMapController> _controller = Completer();

  // in the below line, we are specifying our camera position
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(37.42796133580664, -122.885749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // in the below line, we are specifying our app bar.
        appBar: AppBar(
          // setting background color for app bar
          backgroundColor: Color(0xFF0F9D58),
          // setting title for app bar.
          title: Text("Pick Location"),
        ),
        body: Container(
          // in the below line, creating google maps.
          child: GoogleMap(
            // in the below line, setting camera position
            initialCameraPosition: _kGoogle,
            // in the below line, specifying map type.
            mapType: MapType.normal,
            // in the below line, setting user location enabled.
            myLocationEnabled: true,
            // in the below line, setting compass enabled.
            compassEnabled: true,
            // in the below line, specifying controller on map complete.
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ));
  }
}
