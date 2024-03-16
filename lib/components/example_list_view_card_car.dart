import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_list_view_specification.dart';
import 'package:temnikova_cars/model/cars.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:temnikova_cars/model/video.dart';

class ExampleListViewCardCar extends StatelessWidget {
  final int carId;
  const ExampleListViewCardCar({super.key, required this.carId});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 1200,
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
                        carsList[carId].linksImages[number],
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
                  '${carsList[carId].name} ${carsList[carId].complete}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            Expanded(
              flex: 1,
                child: Text(
                  carsList[carId].cost,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return ExampleListViewSpecification(
                    id: carId,
                  );
                },
              ),
            ),
            Expanded(
              flex: 5,
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
                          carsList[carId].characteristics[0],
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
                          carsList[carId].characteristics[1],
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
                          carsList[carId].characteristics[2],
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
                          carsList[carId].characteristics[3],
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
                          carsList[carId].characteristics[4],
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
                          carsList[carId].characteristics[5],
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
                          carsList[carId].characteristics[6],
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
                          carsList[carId].characteristics[7],
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
                          carsList[carId].characteristics[8],
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
                          carsList[carId].characteristics[9],
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
                id: carId,
            ),
          ],
        ),
    );
  }
}
