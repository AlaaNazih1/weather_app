import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_project/cubits/get_weather_cubit/get_weather_cubit_states/get_weather_cubit.dart';
import 'package:four_project/cubits/get_weather_states.dart';
import 'package:four_project/views/search_view.dart';
import 'package:four_project/widget/no_weather_body.dart';
import 'package:four_project/widget/weather_info_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe1e1e1),
        title: const Text('Weather App', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SearchView()),
              );
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),

      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return NoWeatherBoody();
          } else if (state is WeatherLoadedState) {
            return WeatherInfoBody();
          } else {
            return Text('opps there was an error');
          }
        },
      ),
    );
  }
}

// create states
// create cubit
// create function
// provide cubit
// integrate cubit
// trigger cubit
