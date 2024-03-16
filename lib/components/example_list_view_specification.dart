import 'package:flutter/material.dart';
import 'package:temnikova_cars/model/cars.dart';

class ExampleListViewSpecification extends StatelessWidget {
  final int id;
  const ExampleListViewSpecification({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return Text(
      carsList[id].specification,
      style: const TextStyle(
        fontSize: 25,
      ),
    );
  }
}