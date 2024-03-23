import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_list_view_specification.dart';
import 'package:temnikova_cars/model/cars.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:temnikova_cars/model/cart.dart';
import 'package:temnikova_cars/model/favorite.dart';
import 'package:temnikova_cars/model/video.dart';

class ExampleListViewCardCar extends StatefulWidget {
  final int idCar;
  const ExampleListViewCardCar({super.key, required this.idCar});
  @override
  State<ExampleListViewCardCar> createState() => _ExampleListViewCardCar(idCar);
}
class _ExampleListViewCardCar extends State<ExampleListViewCardCar> {
  final int idCar;
  _ExampleListViewCardCar(this.idCar);
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 1100,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: FlutterCarousel(
              options: CarouselOptions(
                height: 300,
              ),
              items: [1, 2, 3].map((number) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.network(
                      carsList[idCar].linksImages[number],
                    );
                  },
                );
              },
              ).toList(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '${carsList[idCar].name} ${carsList[idCar].complete}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    tooltip: 'Избранное',
                    icon: const Icon(Icons.favorite_border),
                    color: carsList[idCar].colorFavoriteCarsButton,
                    isSelected: carsList[idCar].statusFavoriteCarsSButton,
                    selectedIcon: const Icon(Icons.favorite_border),
                    onPressed: () {
                      if (carsList[idCar].statusFavoriteCarsSButton == false) {
                        carsList[idCar].colorFavoriteCarsButton = Colors.pink;
                        favoriteCars.add(carsList[idCar]);
                        setState(() {
                          carsList[idCar].statusFavoriteCarsSButton = !carsList[idCar].statusFavoriteCarsSButton;
                        });
                      } else {
                        carsList[idCar].colorFavoriteCarsButton = Colors.grey;
                        favoriteCars.removeWhere((item) => item.id == idCar);
                        setState(() {
                          carsList[idCar].statusFavoriteCarsSButton = !carsList[idCar].statusFavoriteCarsSButton;
                        });
                      }
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    tooltip: 'Корзина',
                    icon: const Icon(Icons.shopping_bag_outlined),
                    color: carsList[idCar].colorCartCarsButton,
                    isSelected: carsList[idCar].statusCartCarsButton,
                    selectedIcon: const Icon(Icons.shopping_bag_outlined),
                    onPressed: () {
                      if (carsList[idCar].statusCartCarsButton == false) {
                        carsList[idCar].colorCartCarsButton = Colors.indigoAccent;
                        cartCars.add(carsList[idCar]);
                        setState(() {
                          carsList[idCar].statusCartCarsButton = !carsList[idCar].statusCartCarsButton;
                        });
                      } else {
                        carsList[idCar].colorCartCarsButton = Colors.grey;
                        cartCars.removeWhere((item) => item.id == idCar);
                        setState(() {
                          carsList[idCar].statusCartCarsButton = !carsList[idCar].statusCartCarsButton;
                        });
                      }
                    },
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Text(
                    carsList[idCar].cost,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ExampleListViewSpecification(
                  id: idCar,
                );
              },
            ),
          ),
          Expanded(
            flex: 6,
            child: Table(
              border: TableBorder.all(),
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child: Text(
                        'Объем',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[0],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child:
                      Text(
                        'Мощность',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[1],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child: Text(
                        'Расход',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[2],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child: Text(
                        'Тип топлива',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[3],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child: Text(
                        'Трансмиссия',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[4],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child: Text(
                        'Привод',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[5],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child: Text(
                        'Кол-во мест',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[6],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child: Text(
                        'Кол-во дверей',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[7],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child: Text(
                        'Клиренс',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[8],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    const Expanded(
                      child: Text(
                        'Объем багажника',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        carsList[idCar].characteristics[9],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          YoutubeMediaPlayer(
            id: idCar,
          ),
        ],
      ),
    );
  }
}
