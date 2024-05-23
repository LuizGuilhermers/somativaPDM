import 'package:flutter/material.dart';
import 'mapa3.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3({Key? key}) : super(key: key);


  @override
  _PrincipalState createState() => _PrincipalState();

}

class _PrincipalState extends State<Mapa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BOA VIAGEM'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ), // AppBar
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(51.478660, -0.254376), zoom: 3),
            children: [
              TileLayer(
                urlTemplate:
                'https://tile.thunderforest.com/transport-dark/{z}/{x}/{y}.png?apikey=333762c2807f4c758ea41140ce36e08e',
                userAgentPackageName: 'com.example.app',
              ), // TileLayer

              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(38.700177, -9.246691),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.red),
                    ), // Container
// Marker
                  ), // MarkerLayer
                ],
              ),

            ],
          ), // FlutterMap
        ],
      ), // Stack
    ); // Scaffold
  }
}
