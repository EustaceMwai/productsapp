//import 'package:flutter/material.dart';
//import 'package:map_view/map_view.dart';
//
//import '../helpers/ensure_visible.dart';
//
//class LocationInput extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return _LocationInputState();
//  }
//}
//
//class _LocationInputState extends State<LocationInput> {
//  Uri _staticMapUri;
//  final FocusNode _addressInputFocusNode = FocusNode();
//  @override
//  void initState() {
//    _addressInputFocusNode.addListener(_updateLocation);
//    getStaticMap();
//    super.initState();
//  }
//
//  void getStaticMap() {
//    final StaticMapProvider staticMapViewProvider = StaticMapProvider('AIzaSyDMtH9U1XX3EkPmeIjMz1Ywt9_Wm8-_-xA');
//    final Uri staticMapUri = staticMapViewProvider.getStaticUriWithMarkers([
//      Marker('position', 'Position', 41.40338, 2.17403)
//    ], center: Location(41.40338, 2.17403),
//    width: 500,
//    height: 300,
//      maptype: StaticMapViewType.roadmap);
//
//    setState(() {
//      _staticMapUri = staticMapUri;
//    });
//  }
//
//
//  @override
//  void dispose(){
//    _addressInputFocusNode.removeListener(_updateLocation);
//    super.dispose();
//  }
//
//    void _updateLocation(){
//
//    }
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        EnsureVisibleWhenFocused(
//          focusNode: _addressInputFocusNode,
//          child: TextFormField(
//            focusNode: _addressInputFocusNode,
//          ),
//        ),
//        SizedBox(height: 10.0,),
//        Image.network(_staticMapUri.toString()),
//      ],
//    );
//  }
//}
