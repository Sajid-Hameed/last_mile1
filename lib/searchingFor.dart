import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:last_mile/SearchPage.dart';
import 'package:last_mile/mainPage.dart';
import 'package:rubber/rubber.dart';


import 'colors.dart';
import 'models/product.dart';


void main() => runApp(MapSearch());

class MapSearch extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MapSearch> with SingleTickerProviderStateMixin{
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(24.7955456,67.0564352);

  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
  List<Product> searchResults = [];

  TextEditingController searchController = TextEditingController();

  RubberAnimationController _controller1;
  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: 'Really cool place',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  void initState() {

    _controller1 = RubberAnimationController(
        vsync: this,
        halfBoundValue: AnimationControllerValue(percentage: 0),
        upperBoundValue: AnimationControllerValue(percentage: 0),
        lowerBoundValue: AnimationControllerValue(pixel: 400),
        duration: Duration(milliseconds: 0));
    super.initState();

  }
  Widget _getLowerLayer() {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
      mapType: _currentMapType,
      markers: _markers,
      onCameraMove: _onCameraMove,
    );
  }

  Widget _getUpperLayer() {
    return Container(
      height: MediaQuery.of(context).size.height/1.9,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                offset: Offset(0, -3),
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(24), topLeft: Radius.circular(24)),
          color: Colors.white),
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
//          controller: _scrollController,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.only( top: 15.0, bottom: 16.0),
                      child: Text(
                        'Select your location on map',textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0,),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only( bottom: 16.0),
                      child: Text(
                        'Move pin on the map to find your location and select the delivery address.',textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      height: 40.0,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.grey),
                        ),
                      ),
                      child: TextField(
                        controller: searchController,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          hintText: 'Address',
                          suffixIcon: SvgPicture.asset('assets/search_icon.svg', fit: BoxFit.scaleDown,),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top:20.0,bottom: 20.0),
                    child: InkWell(
                      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(_)=>SearchPage(0))),
                      child: Container(

                        width: MediaQuery.of(context).size.width /1.5,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(60, 111, 102, 1),
                          border: Border.all(color: Color.fromRGBO(60, 111, 102, 1),),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Center(
                            child: new Text("SEARCH BY SHOPS",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.0))),


                      ),
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: InkWell(
                      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(_)=>SearchPage(1))),
                      child: Container(

                        width: MediaQuery.of(context).size.width /1.5,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(60, 111, 102, 0.5),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Center(
                            child: new Text("SEARCH BY PRODUCTS",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.0))),


                      ),
                    )
                )
              ],
            ),
          )


        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Stack(
          children: <Widget>[
            _getLowerLayer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: _getUpperLayer(),
            )


          ],
        ),
      ),
    );
  }
}