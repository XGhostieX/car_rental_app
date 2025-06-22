import 'package:flutter/material.dart';

import '../../../../core/models/car.dart';
import 'widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  final Car car;
  const DetailsView({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const DetailsViewBody(),
    );
  }
}
