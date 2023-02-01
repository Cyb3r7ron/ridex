import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // in the below line, we are initializing our controller for google maps.
  final Completer<GoogleMapController> _controller = Completer();

  // in the below line, we are specifying our camera position
  static const CameraPosition _kGoogle = CameraPosition(
    target: LatLng(37.42796133580664, -122.885749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // in the below line, we are specifying our app bar.
        appBar: AppBar(
          // setting background color for app bar
          backgroundColor: const Color(0xFFCEFA0B),
          // setting title for app bar.
          title: const Center(child: Text("Ride")),
          leading: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: _makingPhoneCall,
              child: const Icon(
                Icons.phone, // add custom icons also
              ),
            ),
          ),
        ),
        body: GoogleMap(
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
        ));
  }
}

_makingPhoneCall() async {
  var url = Uri.parse("tel:9776765434");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
