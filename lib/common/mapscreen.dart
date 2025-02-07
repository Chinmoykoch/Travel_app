import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapscreen extends StatefulWidget {
  const Mapscreen({super.key});

  @override
  State<Mapscreen> createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  late GoogleMapController mapController;

  final LatLng _initialPosition = const LatLng(26.172335, 91.749795);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

// gomapsApi= AlzaSyNV-n_OoH2kEz9dWL5ry0bOSDU3Cdn2V-G

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _initialPosition,
          zoom: 1.0,
        ),
        markers: {
          Marker(
            markerId: const MarkerId("1"),
            position: _initialPosition,
            infoWindow: const InfoWindow(
              title: "New Delhi",
              snippet: "Capital of India",
            ),
          ),
        },
      ),
    );
  }
}
