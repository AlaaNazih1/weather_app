import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_project/cubits/get_weather_cubit/get_weather_cubit_states/get_weather_cubit.dart';

class WeatherInfoBody extends StatefulWidget {
  const WeatherInfoBody({super.key});

  @override
  State<WeatherInfoBody> createState() => _WeatherInfoBodyState();
}

class _WeatherInfoBodyState extends State<WeatherInfoBody> {
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'updated at ${(weatherModel.date.hour)} :${(weatherModel.date.minute)}',
            style: TextStyle(fontSize: 25),
          ),

          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network('https:${weatherModel.image!}'),
              Text(
                weatherModel.temperature,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    'MaxTemp: ${weatherModel.maxTemperature.round()}',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'MinTemp: ${weatherModel.minTemperature.round()}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32),
          Text(
            weatherModel.weatherCondation,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

DateTime stringToDateTime(String value) {
  return DateTime.parse(value);
}
