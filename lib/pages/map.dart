import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' hide LocationAccuracy;
import 'package:flutter/services.dart' show rootBundle;

class TrashMap extends StatefulWidget {
  const TrashMap({Key? key}) : super(key: key);

  @override
  State<TrashMap> createState() => _TrashMapState();
}


class _TrashMapState extends State<TrashMap> {
  //final Geolocator _geolocator = Geolocator()..forceAndroidLocationManager;

  @override
  void initState() {
    super.initState();

    _getCurrent();
  }

  Completer<GoogleMapController> _controller = Completer();

  final Location location = Location();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  late MapType maptype= MapType.hybrid;
  static final CameraPosition _Kemerovo = CameraPosition(
    target: LatLng(55.34653014082502, 86.0931628193308),
    zoom: 11.0,
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trash Map'),
          centerTitle: true,
          backgroundColor: Colors.green[700],
          actions: [
            PopupMenuButton(
              itemBuilder: (builder){
                return  [
                  PopupMenuItem(
                    value: 0,
                    child: Text('Hybrid'),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text('Normal'),
                  ), PopupMenuItem(
                    value: 2,
                    child: Text('Satellite'),
                  ),PopupMenuItem(
                    value: 3,
                    child: Text('Terrain'),
                  ),
                ];
              },onSelected: (value){
              switch(value)
              {
                case 0:
                  setState(() {
                    maptype=MapType.hybrid;
                  });
                  break;
                case 1:
                  setState(() {
                    maptype=MapType.normal;
                  });
                  break;
                case 2:
                  setState(() {
                    maptype=MapType.satellite;
                  });
                  break;
                case 3:
                  setState(() {
                    maptype=MapType.terrain;
                  });
                  break;
              }

            },)
          ],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: _Kemerovo,
            mapType: maptype,
        ),
      ),
    );
  }

  Future<void> _getCurrent() async{
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) async{
          final GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 19)));
    });
  }
}

