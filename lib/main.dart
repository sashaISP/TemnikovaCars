import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_grid_view.dart';
import 'package:temnikova_cars/model/cars.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Автомобили',
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Expanded(
          child: GridView.builder(
            itemCount: carsList.length,
            itemBuilder: (BuildContext context, index) {
              return ExampleGridView(
                idCar: carsList[index].id,
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
          "Автомобили",
          style: TextStyle(
            fontSize: 64,
          ),
        ),
      ),
    );
  }
}
