class Car {
  final String model;
  final String image;
  final int distance;
  final int fuelCapacity;
  final double pricePerHour;

  Car(
      {required this.model,
      required this.image,
      required this.distance,
      required this.fuelCapacity,
      required this.pricePerHour});

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
        model: map['model'],
        image: map['image'],
        distance: map['distance'],
        fuelCapacity: map['fuelCapacity'],
        pricePerHour: map['pricePerHour']);
  }
}
