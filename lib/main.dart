import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_project/cubits/get_weather_cubit/get_weather_cubit_states/get_weather_cubit.dart';
import 'package:four_project/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child:  MaterialApp(
        // theme: ThemeData(
        // // primarySwatch: Colors.red,
        // appBarTheme: Colors.amber,
        // ),
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
 
}
