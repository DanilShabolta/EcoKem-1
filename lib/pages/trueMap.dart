import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';

class TrashMap extends StatefulWidget {
  const TrashMap({Key? key}) : super(key: key);

  @override
  State<TrashMap> createState() => _TrashMapState();
}

class _TrashMapState extends State<TrashMap> {

  Completer<GoogleMapController> _controller = Completer();

  final Location location = Location();
  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  Location _location = Location();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trash Map'),
          centerTitle: true,
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(55.34653014082502, 86.0931628193308),
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}