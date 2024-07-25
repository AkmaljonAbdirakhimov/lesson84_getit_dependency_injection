import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lesson84_getit_dependency_injection/blocs/cars/cars_bloc.dart';
import 'package:lesson84_getit_dependency_injection/controller/cars_controller.dart';
import 'package:lesson84_getit_dependency_injection/repositories/cars_repository.dart';
import 'package:lesson84_getit_dependency_injection/services/cars_service.dart';
import 'package:provider/provider.dart';

import 'screens/cars_screen.dart';
import 'utils/dependency_injection.dart';

void main() {
  setUp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CarsBloc>(),
      child: ChangeNotifierProvider(
        create: (context) => getIt.get<CarsController>(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CarsScreen(),
        ),
      ),
    );
  }
}
