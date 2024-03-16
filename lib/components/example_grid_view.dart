import 'package:flutter/material.dart';
import 'package:temnikova_cars/model/cars.dart';
import 'package:temnikova_cars/pages/card_car.dart';

class ExampleGridView extends StatelessWidget {
  final int idCar;
  const ExampleGridView({Key? key, required this.idCar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Card(
        color: Colors.white70,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardCar(
                  id: idCar,
                ),
              ),
            );
          },
          child: Container(
            color: Colors.black12,
            child:Column(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Image.network(
                      carsList[idCar].linksImages[0],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    carsList[idCar].name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    carsList[idCar].complete,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    carsList[idCar].cost,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
