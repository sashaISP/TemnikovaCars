import 'package:flutter/material.dart';
import 'package:temnikova_cars/pages/cart.dart';
import 'package:temnikova_cars/pages/favorite.dart';
import 'package:temnikova_cars/pages/home.dart';

class ExampleBottomAppBar extends StatelessWidget {
  final bool home;
  final bool favoriteCars;
  final bool cartCars;
  const ExampleBottomAppBar({Key? key,
    required this.home,
    required this.favoriteCars,
    required this.cartCars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blueGrey,
      child: Row(
        children: [
          const SizedBox(
            width: 50,
          ),
          IconButton(
            tooltip: 'Главная',
            icon: const Icon(Icons.home_outlined),
            onPressed: () {
              if (home == true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(
                    ),
                  ),
                );
              }
            },
          ),
          const SizedBox(
            width: 70,
          ),
          IconButton(
            tooltip: 'Избранное',
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              if (favoriteCars == true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const FavoriteCars(
                    ),
                  ),
                );
              }
            },
          ),
          const SizedBox(
            width: 70,
          ),
          IconButton(
            tooltip: 'Корзина',
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              if (cartCars == true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const CartCars(
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}