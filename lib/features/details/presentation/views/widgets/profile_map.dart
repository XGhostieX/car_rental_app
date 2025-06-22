import 'package:flutter/material.dart';

class ProfileMap extends StatelessWidget {
  const ProfileMap({super.key});

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
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/maps.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 5, blurRadius: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
