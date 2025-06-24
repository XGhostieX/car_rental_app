import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../details/presentation/views/details_view.dart';
import '../../views_model/home_cubit/home_cubit.dart';
import 'car_item.dart';

class CarsListview extends StatelessWidget {
  const CarsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeSuccess) {
          return ListView.builder(
            itemCount: state.cars.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsView(car: state.cars[index]),
              )),
              child: CarItem(car: state.cars[index]),
            ),
          );
        } else if (state is HomeFailure) {
          return Center(child: Text(state.errMsg));
        } else {
          return const Center(
              child: Text('Something Went Wrong! Please Try Again Later'));
        }
      },
    );
  }
}
