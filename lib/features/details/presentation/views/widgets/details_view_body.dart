import 'package:flutter/material.dart';

import '../../../../../core/models/car.dart';
import '../../../../home/presentation/views/widgets/car_item.dart';
import 'details_card.dart';
import 'profile_map.dart';

class DetailsViewBody extends StatelessWidget {
  final Car car;
  const DetailsViewBody({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarItem(
            car: car,
          ),
          const SizedBox(height: 20),
          ProfileMap(car: car),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                DetailsCard(
                  car: Car(
                    model: '${car.model}-1',
                    distance: car.distance + 100,
                    fuelCapacity: car.fuelCapacity + 100,
                    pricePerHour: car.pricePerHour + 10,
                    image: car.image,
                  ),
                ),
                const SizedBox(height: 5),
                DetailsCard(
                  car: Car(
                    model: '${car.model}-2',
                    distance: car.distance + 200,
                    fuelCapacity: car.fuelCapacity + 200,
                    pricePerHour: car.pricePerHour + 20,
                    image: car.image,
                  ),
                ),
                const SizedBox(height: 5),
                DetailsCard(
                  car: Car(
                    model: '${car.model}-3',
                    distance: car.distance + 300,
                    fuelCapacity: car.fuelCapacity + 300,
                    pricePerHour: car.pricePerHour + 30,
                    image: car.image,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
