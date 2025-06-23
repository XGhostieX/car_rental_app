import 'package:flutter/material.dart';

import '../../../../core/models/car.dart';
import 'widgets/map_view_body.dart';

class MapView extends StatelessWidget {
  final Car car;
  const MapView({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: MapViewBody(car: car),
    );
  }
}
