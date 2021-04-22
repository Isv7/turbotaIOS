import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'package:app/components/BottomNavbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';

const String googleAPIKey = "AIzaSyC1nSCk-3xWazB4MDcTM0BpAlYIC03o-lA";
const double CAMERA_ZOOM = 14;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const LatLng CENTER_POSITION = LatLng(49.068767, 33.406544);

class LocationScreen extends StatefulWidget {
  final dynamic burial;

  LocationScreen(this.burial);

  @override
  State<StatefulWidget> createState() {
    return _LocationScreenState();
  }
}

class _LocationScreenState extends State<LocationScreen> {
  Completer<GoogleMapController> _controller = Completer();
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData currentLocation;
  LatLng destinationLocation;
  LatLng centerLocation;
  BitmapDescriptor pinLocationIcon;
  BitmapDescriptor pinTextLocationIcon;
  BitmapDescriptor rowsTextLocationIcon;
  PolylinePoints polylinePoints;
  List<LatLng> polylineCoordinates = List<LatLng>();
  Map<PolylineId, Polyline> _polylines = {};
  Set<Polygon> _polygons = HashSet<Polygon>();
  List<LatLng> _polygonLatLngs = List<LatLng>();
  List<LatLng> _polylineSectorEnterLatLngs = List<LatLng>();
  String mode = "locations";
  bool mapReady = false;

  final Map<String, Marker> _markers = {};
  Location location = new Location();

  @override
  void initState() {
    super.initState();
    //location.changeSettings(accuracy: LocationAccuracy.high);
    _checkLocationPermission();
    double _latitude = 0;
    double _longitude = 0;
    destinationLocation = LatLng(
        widget.burial.subsector.coordinates[0].latitude,
        widget.burial.subsector.coordinates[0].longitude);
    for (var coordinate in widget.burial.subsector.coordinates) {
      _polygonLatLngs.add(LatLng(coordinate.latitude, coordinate.longitude));
      _latitude += coordinate.latitude;
      _longitude += coordinate.longitude;
    }
    centerLocation = LatLng(
        _latitude / widget.burial.subsector.coordinates.length,
        _longitude / widget.burial.subsector.coordinates.length);
    if (widget.burial.subsector.coordinates.length > 2) {
      _polylineSectorEnterLatLngs.add(LatLng(
          widget.burial.subsector.coordinates[0].latitude,
          widget.burial.subsector.coordinates[0].longitude));
      _polylineSectorEnterLatLngs.add(LatLng(
          widget.burial.subsector.coordinates[1].latitude,
          widget.burial.subsector.coordinates[1].longitude));
    }
    if (widget.burial.coordinates.length > 0) {
      destinationLocation = LatLng(widget.burial.coordinates[0].latitude,
          widget.burial.coordinates[0].longitude);
    }
    polylinePoints = PolylinePoints();
    location.onLocationChanged.listen((LocationData currentLocation) {
      this.currentLocation = currentLocation;
      _setPolylines();
    });
    _setPolygon();
    _setSubsectorEnterPolylines();
  }

  void _checkLocationPermission() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    this.setState(() {
      mapReady = true;
    });
    _getCurrentLocation();
  }

  void _setPolygon() {
    final String polygonIdVal = 'subsector_id';
    _polygons.add(Polygon(
      polygonId: PolygonId(polygonIdVal),
      points: _polygonLatLngs,
      strokeWidth: 2,
      strokeColor: Colors.yellow,
      fillColor: Colors.yellow.withOpacity(0.15),
    ));
  }

  void _setSubsectorEnterPolylines() {
    final String polylineIdVal = 'subsector_id_enter';
    _polylines[PolylineId(polylineIdVal)] = Polyline(
        polylineId: PolylineId(polylineIdVal),
        points: _polylineSectorEnterLatLngs,
        width: 4,
        color: Colors.brown,
        zIndex: 10);
  }

  void _setCustomMapPin(BuildContext context) async {
    double mq = MediaQuery.of(context).devicePixelRatio;
    ImageConfiguration imageConfig = ImageConfiguration(devicePixelRatio: mq);
    String icon = "assets/img/destination_map_marker.png";
    if (Platform.isIOS) {
      if (mq > 1.5 && mq < 2.5) {
        icon = "assets/img/map_marker.png";
      } else if (mq >= 2.5) {
        icon = "assets/img/map_marker_small.png";
      }
    }
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(imageConfig, icon);
    pinTextLocationIcon = await createCustomMarkerBitmap(
        "${S.of(context).Row} ${this.widget.burial.row}\n${S.of(context).Place} ${this.widget.burial.place}",
        25);
    rowsTextLocationIcon = await createCustomMarkerBitmap(
        "рядів:\n" + this.widget.burial.subsector.rowsNum.toString(), 35);
  }

  Future<BitmapDescriptor> createCustomMarkerBitmap(
      String title, double fontSize) async {
    TextPainter tp = new TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    tp.text = TextSpan(
      text: title,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.brown,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      ),
    );

    PictureRecorder recorder = new PictureRecorder();
    Canvas c = new Canvas(recorder);

    tp.layout();
    tp.paint(c, new Offset(20.0, 10.0));

    /* Do your painting of the custom icon here, including drawing text, shapes, etc. */

    Picture p = recorder.endRecording();
    ByteData pngBytes =
        await (await p.toImage(tp.width.toInt() + 40, tp.height.toInt() + 20))
            .toByteData(format: ImageByteFormat.png);

    Uint8List data = Uint8List.view(pngBytes.buffer);

    return BitmapDescriptor.fromBytes(data);
  }

  void _setPolylines() async {
    if (destinationLocation != null) {
      try {
        PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
            googleAPIKey,
            PointLatLng(currentLocation.latitude, currentLocation.longitude),
            PointLatLng(
                destinationLocation.latitude, destinationLocation.longitude));

        if (result.points.isNotEmpty) {
          polylineCoordinates.clear();
          result.points.forEach((PointLatLng point) {
            polylineCoordinates.add(LatLng(point.latitude, point.longitude));
          });
          polylineCoordinates.add(LatLng(
              destinationLocation.latitude, destinationLocation.longitude));

          setState(() {
            _polylines[PolylineId("poly")] = Polyline(
                width: 2,
                polylineId: PolylineId("poly"),
                color: Color(0xFFD76701),
                points: polylineCoordinates);
          });
        }
      } catch (err) {
        print(err);
      }
    }
  }

  void _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
    if (destinationLocation != null) {
      final marker1 = Marker(
          markerId: MarkerId("1"),
          position: destinationLocation,
          // infoWindow: InfoWindow(
          //   title: "office.name",
          //   snippet: "office.address",
          // ),
          icon: pinLocationIcon,
          zIndex: 1);
      final marker2 = Marker(
          markerId: MarkerId("2"),
          anchor: Offset(0.5, 1.7),
          position: destinationLocation,
          icon: pinTextLocationIcon,
          zIndex: 2);
      _markers["1"] = marker1;
      _markers["2"] = marker2;
    }
    setState(() {});
  }

// Method for retrieving the current location
  _getCurrentLocation() async {
    currentLocation = await location.getLocation();
    // For moving the camera to current location
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          tilt: CAMERA_TILT,
          bearing: CAMERA_BEARING,
          zoom: CAMERA_ZOOM,
          target: LatLng(currentLocation.latitude, currentLocation.longitude),
        ),
      ),
    );
    _setPolylines();
  }

  @override
  Widget build(BuildContext context) {
    _setCustomMapPin(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).Location),
        centerTitle: true,
      ),
      bottomNavigationBar:
          BottomNavBar(active: '/Location', burial: this.widget.burial),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            color: Theme.of(context).primaryColor,
          ),
          mapReady
              ? GoogleMap(
                  onMapCreated: _onMapCreated,
                  onCameraMove: (CameraPosition cameraPosition) {
                    if (cameraPosition.zoom > 17 &&
                        this.widget.burial.subsector.rows != 0) {
                      // final marker = Marker(
                      //     markerId: MarkerId("rows"),
                      //     anchor: Offset(0.5, 0.48),
                      //     position: centerLocation,
                      //     icon: rowsTextLocationIcon,
                      //     zIndex: 2);
                      // this.setState(() {
                      //   _markers["rows"] = marker;
                      // });
                    } else {
                      this.setState(() {
                        _markers.remove("rows");
                      });
                    }
                  },
                  initialCameraPosition: CameraPosition(
                      zoom: CAMERA_ZOOM,
                      tilt: CAMERA_TILT,
                      bearing: CAMERA_BEARING,
                      target: destinationLocation ?? CENTER_POSITION),
                  myLocationEnabled: true,
                  myLocationButtonEnabled: false,
                  mapType: MapType.normal,
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: false,
                  markers: _markers.values.toSet(),
                  polygons: _polygons,
                  polylines: Set<Polyline>.of(_polylines.values),
                )
              : Container(),
          mapReady
              ? Positioned(
                  bottom: verticalScale(context, 40),
                  right: scale(context, 21),
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    child: SvgPicture.asset('assets/img/navigator.svg',
                        height: verticalScale(context, 42)),
                    onPressed: () => _getCurrentLocation(), // open drawer
                  ))
              : Container(),
          // Positioned(
          //     left: scale(context, 20),
          //     bottom: verticalScale(context, 10),
          //     child: Row(children: <Widget>[
          //       Container(
          //         width: scale(context, 61),
          //         height: scale(context, 61),
          //         decoration: BoxDecoration(
          //           boxShadow: [
          //             BoxShadow(
          //               color: Color.fromRGBO(0, 0, 0, 0.25),
          //               blurRadius: 4,
          //               offset: Offset(0, 4), // changes position of shadow
          //             ),
          //           ],
          //         ),
          //         child: RaisedButton(
          //           onPressed: () {
          //             Navigator.pushNamed(context, AppRouter.MediaOrder,
          //                 arguments: {"burial": this.widget.burial});
          //           },
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(5.0)),
          //           padding: EdgeInsets.all(0.0),
          //           child: Ink(
          //             decoration: BoxDecoration(
          //                 gradient: LinearGradient(
          //                   colors: [Color(0xFF5A302B), Color(0xFF351A16)],
          //                   begin: Alignment.topCenter,
          //                   end: Alignment.bottomCenter,
          //                 ),
          //                 borderRadius: BorderRadius.circular(5.0)),
          //             child: Container(
          //                 alignment: Alignment.center,
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: <Widget>[
          //                     Image.asset("assets/img/photo-video.png",
          //                         width: scale(context, 26)),
          //                     SizedBox(height: verticalScale(context, 4)),
          //                     Text(
          //                       S.of(context).OrderPhoto,
          //                       textAlign: TextAlign.center,
          //                       style:
          //                           TextStyle(color: Colors.white, fontSize: 7),
          //                     )
          //                   ],
          //                 )),
          //           ),
          //         ),
          //       ),
          //       SizedBox(width: scale(context, 15)),
          //       Container(
          //         width: scale(context, 61),
          //         height: scale(context, 61),
          //         decoration: BoxDecoration(
          //           boxShadow: [
          //             BoxShadow(
          //               color: Color.fromRGBO(0, 0, 0, 0.25),
          //               blurRadius: 4,
          //               offset: Offset(0, 4), // changes position of shadow
          //             ),
          //           ],
          //         ),
          //         child: RaisedButton(
          //           onPressed: () {
          //             Navigator.pushNamed(context, AppRouter.Cleaning,
          //                 arguments: {"burial": this.widget.burial});
          //           },
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(5.0)),
          //           padding: EdgeInsets.all(0.0),
          //           child: Ink(
          //             decoration: BoxDecoration(
          //                 gradient: LinearGradient(
          //                   colors: [Color(0xFF5A302B), Color(0xFF351A16)],
          //                   begin: Alignment.topCenter,
          //                   end: Alignment.bottomCenter,
          //                 ),
          //                 borderRadius: BorderRadius.circular(5.0)),
          //             child: Container(
          //                 alignment: Alignment.center,
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: <Widget>[
          //                     Image.asset("assets/img/cleaning.png",
          //                         width: scale(context, 26)),
          //                     SizedBox(height: verticalScale(context, 4)),
          //                     Text(
          //                       S.of(context).Cleaning,
          //                       textAlign: TextAlign.center,
          //                       style:
          //                           TextStyle(color: Colors.white, fontSize: 7),
          //                     )
          //                   ],
          //                 )),
          //           ),
          //         ),
          //       ),
          //       SizedBox(width: scale(context, 15)),
          //       Container(
          //         width: scale(context, 61),
          //         height: scale(context, 61),
          //         decoration: BoxDecoration(
          //           boxShadow: [
          //             BoxShadow(
          //               color: Color.fromRGBO(0, 0, 0, 0.25),
          //               blurRadius: 4,
          //               offset: Offset(0, 4), // changes position of shadow
          //             ),
          //           ],
          //         ),
          //         child: RaisedButton(
          //           onPressed: () {},
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(5.0)),
          //           padding: EdgeInsets.all(0.0),
          //           child: Ink(
          //             decoration: BoxDecoration(
          //                 gradient: LinearGradient(
          //                   colors: [Color(0xFF5A302B), Color(0xFF351A16)],
          //                   begin: Alignment.topCenter,
          //                   end: Alignment.bottomCenter,
          //                 ),
          //                 borderRadius: BorderRadius.circular(5.0)),
          //             child: Container(
          //                 alignment: Alignment.center,
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: <Widget>[
          //                     Image.asset("assets/img/photo-video.png",
          //                         width: scale(context, 26)),
          //                     Text(
          //                       S.of(context).OrderDirge,
          //                       textAlign: TextAlign.center,
          //                       style:
          //                           TextStyle(color: Colors.white, fontSize: 8),
          //                     )
          //                   ],
          //                 )),
          //           ),
          //         ),
          //       ),
          //     ])),
        ],
      ),
    ));
  }
}
