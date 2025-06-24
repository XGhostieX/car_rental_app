import 'package:car_rental_app/features/map/presentation/views/map_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/models/car.dart';

class ProfileMap extends StatefulWidget {
  final Car car;
  const ProfileMap({super.key, required this.car});

  @override
  State<ProfileMap> createState() => _ProfileMapState();
}

class _ProfileMapState extends State<ProfileMap>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller)
      ..addListener(() => setState(() {}));
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFF3F3F3),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 5, blurRadius: 10),
                ],
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/user.png'),
                  ),
                  SizedBox(height: 10),
                  Text('Jane Cooper',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('\$4,253', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MapView(car: widget.car),
              )),
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 5, blurRadius: 10),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Transform.scale(
                    scale: _animation.value,
                    alignment: Alignment.center,
                    child: Image.asset('assets/maps.png', fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
