import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_bottom_app_bar.dart';
import 'package:temnikova_cars/components/example_list_view_card_car.dart';
import 'package:temnikova_cars/model/cars.dart';

class CardCar extends StatelessWidget {
  final int id;
  const CardCar({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[100],
        alignment: Alignment.center,
        child: Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return ExampleListViewCardCar(
                idCar: id,
              );
            },
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          carsList[id].name,
          style: const TextStyle(
            fontSize: 37,
          ),
        ),
      ),
      bottomNavigationBar: const ExampleBottomAppBar(
        home: true,
        favoriteCars: true,
        cartCars: true,
      ),
    );
  }
}
