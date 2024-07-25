import 'package:dio/dio.dart';
import 'package:lesson84_getit_dependency_injection/models/car.dart';

class CarsService {
  String baseUrl = "";
  final _dio = Dio();

  CarsService(this.baseUrl);

  Future<List<Car>> getCars() async {
    try {
      final response = await _dio.get("$baseUrl/cars.json");

      final data = response.data;
      final List<Car> cars = [];
      if (data != null) {
        data.forEach(
          (key, value) {
            cars.add(Car(value['name']));
          },
        );
      }

      return cars;
    } catch (e) {
      rethrow;
    }
  }
}
