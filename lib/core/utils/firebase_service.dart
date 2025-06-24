import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/car.dart';

class FirebaseService {
  final FirebaseFirestore firestore;

  FirebaseService({required this.firestore});
  Future<List<Car>> getCars() async {
    var snapshot = await firestore.collection('cars').get();
    return snapshot.docs.map((e) => Car.fromMap(e.data())).toList();
  }
}
