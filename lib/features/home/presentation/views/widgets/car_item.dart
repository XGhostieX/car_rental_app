import 'package:flutter/material.dart';

import '../../../../../core/models/car.dart';

class CarItem extends StatelessWidget {
  final Car car;
  const CarItem({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 10),
        ],
      ),
      child: Column(
        children: [
          Image.asset('assets/car_image.png', height: 120),
          Text(
            car.model,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/gps.png'),
                      const SizedBox(width: 2),
                      Text('${car.distance.toStringAsFixed(0)}Km'),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Row(
                    children: [
                      Image.asset('assets/pump.png'),
                      const SizedBox(width: 5),
                      Text('${car.distance.toStringAsFixed(0)}L'),
                    ],
                  ),
                ],
              ),
              Text(
                '\$${car.pricePerHour.toStringAsFixed(2)}/h',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ],
      ),
    );
  }
}
