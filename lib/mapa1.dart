import 'package:flutter/material.dart';
import 'mapa1.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa1 extends StatefulWidget {
  const Mapa1({Key? key}) : super(key: key);


  @override
  _PrincipalState createState() => _PrincipalState();

}

class _PrincipalState extends State<Mapa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BOA VIAGEM'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ), // AppBar
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(51.478660, -0.254376), zoom: 3),
            children: [
              TileLayer(
                urlTemplate:
                'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=333762c2807f4c758ea41140ce36e08e',
                userAgentPackageName: 'com.example.app',
              ), // TileLayer

              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(41.889793, 12.426336),
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
