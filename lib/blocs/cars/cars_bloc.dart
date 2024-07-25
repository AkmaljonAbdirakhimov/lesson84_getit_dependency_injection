import 'package:bloc/bloc.dart';
import 'package:lesson84_getit_dependency_injection/repositories/cars_repository.dart';
import 'package:meta/meta.dart';

part 'cars_event.dart';
part 'cars_state.dart';

class CarsBloc extends Bloc<CarsEvent, CarsState> {
  final CarsRepository carsRepository;
  CarsBloc(this.carsRepository) : super(CarsInitial()) {
    on<CarsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
