import 'package:flutter/material.dart';
import 'package:lesson84_getit_dependency_injection/models/car.dart';
import 'package:lesson84_getit_dependency_injection/repositories/cars_repository.dart';

class CarsController extends ChangeNotifier {
  final CarsRepository carsRepository;

  CarsController({required this.carsRepository});

  Future<List<Car>> getCars() async {
    return await carsRepository.getCars();
  }
}
