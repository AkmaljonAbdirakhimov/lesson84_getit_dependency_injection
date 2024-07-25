import 'package:lesson84_getit_dependency_injection/services/cars_service.dart';

import '../models/car.dart';

class CarsRepository {
  final CarsService carsService;

  CarsRepository({
    required this.carsService,
  });

  Future<List<Car>> getCars() async {
    return await carsService.getCars();
  }
}
