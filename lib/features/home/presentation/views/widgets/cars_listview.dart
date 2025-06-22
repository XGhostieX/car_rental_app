import 'package:car_rental_app/features/details/presentation/views/details_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/models/car.dart';
import 'car_item.dart';

class CarsListview extends StatelessWidget {
  final List<Car> cars = [
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    )
  ];
  CarsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cars.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsView(car: cars[index]),
        )),
        child: CarItem(car: cars[index]),
      ),
    );
  }
}
