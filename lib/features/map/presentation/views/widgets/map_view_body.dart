import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/models/car.dart';
import 'map_card.dart';

class MapViewBody extends StatelessWidget {
  final Car car;
  const MapViewBody({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(30.54258309, 31.08525146),
            initialZoom: 13,
          ),
          children: [
            // TileLayer(
            //   urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            //   subdomains: ['a', 'b', 'c '],
            // ),
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.car_rental_app',
            ),
          ],
        ),
        MapCard(car: car),
      ],
    );
  }
}
