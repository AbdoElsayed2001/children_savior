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
      zoom: 16.5746,
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
  late Set<Marker> mymarker = {
    Marker(markerId: MarkerId("1"),position: LatLng(30.830894,31.507964),
       // LatLng(31.042377,31.351838),
    ),
    Marker(markerId: MarkerId("2"),position: LatLng(31.0815580,  31.5950530),
      // LatLng(31.042377,31.351838),
    )
  };

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _kGooglePlex == null ? Center(child: CircularProgressIndicator(),) :
              Expanded(
                child: GoogleMap(
                  markers: mymarker,
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex!,
                  onMapCreated: (GoogleMapController controller) {
                    gmc = controller;
                  },
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.all(6.0),
          //   child: ElevatedButton(onPressed: (){
          //     LatLng lating = LatLng(31.0815580,  31.5950530);
          //     gmc.animateCamera(CameraUpdate.newCameraPosition(
          //         CameraPosition(
          //         target: lating,zoom: 19,//tilt: 45,bearing: 45
          //     )
          //     ));
          //   },
          //       style: ButtonStyle(
          //         //padding:  MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20),),
          //         fixedSize: MaterialStateProperty.all(Size(105, 40)),
          //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(25),
          //         ),
          //         ),
          //       ),
          //       child: Row(
          //         children: [
          //           CircleAvatar(
          //             radius: 12,
          //             backgroundImage:
          //             NetworkImage(
          //                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS_zLH8I0DFX2oFlpo3_nQLiS8Uib4u05AmQ&usqp=CAU"
          //             ),
          //           ),
          //           SizedBox(width: 4,),
          //           Text('Adam'),
          //         ],
          //       )
          //   ),),
        ],
      ),
    );
  }
}
