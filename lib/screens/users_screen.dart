import 'package:flutter/material.dart';
import 'package:lesson84_getit_dependency_injection/controller/cars_controller.dart';
import 'package:lesson84_getit_dependency_injection/controller/users_controller.dart';
import 'package:lesson84_getit_dependency_injection/repositories/cars_repository.dart';
import 'package:provider/provider.dart';

import '../utils/dependency_injection.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final carsController = context.watch<CarsController>();

    return ChangeNotifierProvider(
      create: (ctx) {
        return UsersController(getIt.get<CarsRepository>());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("DI - Dependecy Injection"),
        ),
        body: FutureBuilder(
          future: carsController.getCars(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final cars = snapshot.data;

            if (cars == null || cars.isEmpty) {
              return const Center(
                child: Text("Ma'lumotlar mavjud emas"),
              );
            }

            return ListView.builder(
              itemCount: cars.length,
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text(cars[index].name),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
