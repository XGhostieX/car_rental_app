import 'package:flutter/material.dart';

import '../../../../../core/models/car.dart';

class DetailsCard extends StatelessWidget {
  final Car car;
  const DetailsCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF212020),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black54, offset: Offset(0, 4), blurRadius: 8),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  car.model,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.directions_car,
                        color: Colors.white, size: 16),
                    const SizedBox(height: 5),
                    Text(
                      '> ${car.distance} Km',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Icon(Icons.battery_full,
                        color: Colors.white, size: 16),
                    const SizedBox(height: 5),
                    Text(
                      car.fuelCapacity.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 24),
          ],
        ),
      ),
    );
  }
}
