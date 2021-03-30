import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

var bens = '''[
        {
            "id": 1,
            "nuLatitude": -27.549549741863,
            "nuLongitude": -48.493058915869
        },
        {
            "id": 2,
            "nuLatitude": -27.4793029,
            "nuLongitude": -48.4151535
        },
        {
            "id": 3,
            "nuLatitude": -27.60835916043,
            "nuLongitude": -48.544320004963
        },
        {
            "id": 4,
            "nuLatitude": -27.628851165259,
            "nuLongitude": -48.524445518802
        },
        {
            "id": 5,
            "nuLatitude": -27.5997862,
            "nuLongitude": -48.587843
        },
        {
            "id": 6,
            "nuLatitude": -27.7037787228,
            "nuLongitude": -48.503541591541
        },
        {
            "id": 7,
            "nuLatitude": -27.5913245,
            "nuLongitude": -48.5152638
        },
        {
            "id": 8,
            "nuLatitude": -27.597292410204,
            "nuLongitude": -48.552810093254
        },
        {
            "id": 9,
            "nuLatitude": -27.597397,
            "nuLongitude": -48.552794
        },
        {
            "id": 10,
            "nuLatitude": -27.7160468,
            "nuLongitude": -48.5624159
        }
        ]
''';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  BitmapDescriptor pinLocationIcon;
  LatLng pinPosition = LatLng(-27.601271, -48.4570442);
  String maxZoom = '10.200';

  // Set<Marker> _markers = {};
  List<Marker> allMarkers = [];

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-27.601271, -48.4570442),
    zoom: 10.200,
  );

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'asserts/icon_image_map.png');
  }

  Future<void> createMap(GoogleMapController controller) async {
    if (bens == null) {
      return CircularProgressIndicator();
    }
    setState(() {
      List<dynamic> parsedJson = jsonDecode(bens);
      allMarkers = parsedJson.map((element) {
        return Marker(
            markerId: MarkerId(element['id'].toString()),
            position: LatLng(element['nuLatitude'], element['nuLongitude']));
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        markers: Set.from(allMarkers),
        onMapCreated: createMap,
        minMaxZoomPreference: MinMaxZoomPreference(10.000, 12.22),
        scrollGesturesEnabled: false,
      ),
    );
  }
}
