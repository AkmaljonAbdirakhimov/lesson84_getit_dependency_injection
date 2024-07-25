import 'package:get_it/get_it.dart';
import 'package:lesson84_getit_dependency_injection/blocs/cars/cars_bloc.dart';
import 'package:lesson84_getit_dependency_injection/controller/cars_controller.dart';

import '../repositories/cars_repository.dart';
import '../services/cars_service.dart';

final getIt = GetIt.I;

void setUp() {
  getIt.registerSingleton<CarsService>(
      CarsService(
          "https://dars66-ae91b-default-rtdb.firebaseio.com/retroCars.json"),
      instanceName: "retro");
  getIt.registerSingleton<CarsService>(
      CarsService(
          "https://dars66-ae91b-default-rtdb.firebaseio.com/racingCars.json"),
      instanceName: "racing");
  getIt.registerSingleton(
    CarsRepository(
      carsService: getIt.get<CarsService>(instanceName: "retro"),
    ),
  );
  getIt.registerSingleton(
    CarsController(
      carsRepository: getIt.get<CarsRepository>(),
    ),
  );

  // BLOC

  getIt.registerSingleton(
    CarsBloc(
      getIt.get<CarsRepository>(),
    ),
  );

  getIt.unregister<CarsService>(instanceName: "retro");
  getIt.unregister<CarsRepository>();
}
