import 'package:flutter/material.dart';

class MapIcons extends StatelessWidget {
  const MapIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        mapIcon(Icons.local_gas_station_rounded, 'Diesel', 'Common Rail'),
        mapIcon(Icons.speed_rounded, 'Acceleration', '0 - 100Km/s'),
        mapIcon(Icons.ac_unit_rounded, 'Cold', 'Temp Control'),
      ],
    );
  }
}

Widget mapIcon(IconData icon, String title, String subtitle) {
  return Container(
    width: 100,
    height: 100,
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 28),
        Text(title),
        Text(subtitle, style: TextStyle(color: Colors.grey, fontSize: 10)),
      ],
    ),
  );
}
