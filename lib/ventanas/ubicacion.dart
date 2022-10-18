import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

///////////////////////////////////Yahir//////////////////////
class Conocenos extends StatefulWidget {
  const Conocenos({Key? key}) : super(key: key);
// route de mi navegation

  @override
  State<Conocenos> createState() => _ConocenosState();
}

class _ConocenosState extends State<Conocenos> {
  GoogleMapController? _controller;

  @override
  void dispose() {
    // TODO: implement dispose
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
            child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.location_on_rounded),
              onPressed: () {
                final CameraPosition cameraPosition = const CameraPosition(
                  target: LatLng(20.578716280720275, -90.00771737855695),
                  zoom: 15.5,
                );
                _controller?.animateCamera(
                    CameraUpdate.newCameraPosition(cameraPosition));
              },
            ),
          ],
        )),
        body: GoogleMap(
          onMapCreated: (controller) {
            _controller = controller;
          },
          initialCameraPosition: const CameraPosition(
            target: LatLng(37.42796133580664, -122.085749655962),
            zoom: 10.0,
          ),
        ));
  }
}
