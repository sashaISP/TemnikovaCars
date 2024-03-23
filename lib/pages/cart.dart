import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_bottom_app_bar.dart';
import 'package:temnikova_cars/components/example_grid_view.dart';
import 'package:temnikova_cars/model/cart.dart';

class CartCars extends StatelessWidget {
  const CartCars({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Expanded(
          child: GridView.builder(
            itemCount: cartCars.length,
            itemBuilder: (BuildContext context, index) {
              return ExampleGridView(
                idCar: cartCars[index].id,
              );
            },
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 0.55,
              maxCrossAxisExtent: 203,
            ),
            padding: const EdgeInsets.all(3),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Корзина",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      bottomNavigationBar: const ExampleBottomAppBar(
        home: true,
        favoriteCars: true,
        cartCars: false,
      ),
    );
  }
}