import 'package:flutter/material.dart';
import 'package:lesson84_getit_dependency_injection/controller/cars_controller.dart';
import 'package:provider/provider.dart';

import '../models/car.dart';
import '../services/cars_service.dart';
import '../utils/dependency_injection.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final carsConroller = context.read<CarsController>();
    // print(getIt.get<CarsService>(instanceName: "retro").baseUrl);
    // print(getIt.get<CarsService>(instanceName: "racing").baseUrl);

    print(getIt.getAll<CarsService>().toList());

    return Scaffold(
      appBar: AppBar(
        title: const Text("DI - Dependecy Injection"),
      ),
      // body: FutureBuilder(
      //   future: carsConroller.getCars(),
      //   builder: (ctx, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }

      //     final cars = snapshot.data;

      //     if (cars == null || cars.isEmpty) {
      //       return const Center(
      //         child: Text("Ma'lumotlar mavjud emas"),
      //       );
      //     }

      //     return ListView.builder(
      //       itemCount: cars.length,
      //       itemBuilder: (ctx, index) {
      //         return ListTile(
      //           title: Text(cars[index].name),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}
