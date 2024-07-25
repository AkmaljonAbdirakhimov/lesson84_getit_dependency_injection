import 'package:flutter/material.dart';
import 'package:lesson84_getit_dependency_injection/repositories/cars_repository.dart';

class UsersController extends ChangeNotifier {
  final CarsRepository carsRepository;

  UsersController(this.carsRepository);
}
