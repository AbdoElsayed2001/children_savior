import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Maps extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MapsState();
}

class MapsState extends State<Maps> {
  late Position cl ;
  var lat ;
  var long ;
  CameraPosition? _kGooglePlex ;

  Future getper() async {
   bool services;
   LocationPermission per ;

   services = await Geolocator.isLocationServiceEnabled();
   if (services == false ){
     AwesomeDialog(
       context : context,
       title : "services",
       body : const Text("location service is not enabled")).show();
   }
    per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied){
      // per = await Geolocator.requestPermission();
      // if (per == LocationPermission.always){
      //   getlatAndlong();
      // }
    }
    return per;
  }
  Future<void> getlatAndlong() async {
    cl = await Geolocator.getCurrentPosition().then((value) => value);
    lat = cl.latitude;
    long = cl.longitude;
    _kGooglePlex = CameraPosition(
      target: LatLng(lat, long),
      zoom: 12.4746,
    );
    setState((){});
  }
  @override
  void initState() {
    getper();
    getlatAndlong();
    super.initState();
  }

  late GoogleMapController gmc;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _kGooglePlex == null ? Center(child: CircularProgressIndicator(),) :
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex!,
              onMapCreated: (GoogleMapController controller) {
                gmc = controller;
              },
            ),
          ),
        ],
      ),
    );
  }
}
