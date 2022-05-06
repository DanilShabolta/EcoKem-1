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


  @override
  void initState() {
    super.initState();
    _determinePosition();
    _getCurrent();
  }

  final Location location = Location();

  final Set<Marker> _markers = {};

  final Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      loadMarkers();
    });
    _controller.complete(controller);
  }

  late MapType maptype= MapType.hybrid;
  static const CameraPosition _Kemerovo = CameraPosition(
    target: LatLng(55.34653014082502, 86.0931628193308),
    zoom: 11.0,
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trash Map'),
          centerTitle: true,
          backgroundColor: Colors.green[700],
          actions: [
            PopupMenuButton(
              itemBuilder: (builder){
                return  [
                  const PopupMenuItem(
                    value: 0,
                    child: Text('Hybrid'),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text('Normal'),
                  ), const PopupMenuItem(
                    value: 2,
                    child: Text('Satellite'),
                  ),const PopupMenuItem(
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
          mapType: maptype,
          markers: Set.from(_markers),
          initialCameraPosition: _Kemerovo,
          compassEnabled: true,
          myLocationEnabled: true,
          onMapCreated: _onMapCreated,
        ),
      ),
    );
  }

  Future<void> _getCurrent() async{
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) async{
          final GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 16)));
    });
  }

  Future loadMarkers() async {
    var jsonData = await rootBundle.loadString("lib/pages/markers/markers.json");
    var data = json.decode(jsonData);

    data["coords"].forEach((item)
    {
_markers.add(Marker(
    markerId: MarkerId(item["ID"]),
  position: LatLng(double.parse(item["latitude"]), double.parse(item["longitude"])),
    onTap: () {
      showGeneralDialog(context: context, transitionDuration: const Duration(milliseconds: 400), pageBuilder: (bc, ania, anis){
        return Scaffold(
          backgroundColor: Colors.white12,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: ListView(
              children: [
                const SizedBox(height: 200, width: 0,),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                    color: Colors.white,
                  ),
                  child: (
                    Column(
                      children: [
                        const SizedBox(height: 25,),
                        Text(item["comment"], textAlign: TextAlign.center, style: const TextStyle(color: Colors.black, fontSize: 35),),
                        const SizedBox(height: 30,),
                        ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(25)),
                          child: Image.asset(item["photo"], width: 350, height: 450,),
                        ),
                        const SizedBox(height: 30,),
                        Center(
                          child: ElevatedButton(onPressed: () {
                            Navigator.pop(context);
                          },
                            child: const SizedBox(
                              height: 40,
                              width: 80,
                              child: Center(
                                child: Text('OK'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                      ],
                    )
                  )
                  ),
              ],
            ),
          )
        );
    });
      },
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
));
    });
  }
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }
}

