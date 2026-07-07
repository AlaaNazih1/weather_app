import 'package:flutter/material.dart';

class NoWeatherBoody extends StatefulWidget {
  const NoWeatherBoody({super.key});

  @override
  State<NoWeatherBoody> createState() => _NoWeatherBoodyState();
}

class _NoWeatherBoodyState extends State<NoWeatherBoody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[ Text(
            'There is No Weather 😞 Start ',
            style: TextStyle(fontSize: 25, ),
          ),
          Text( 'Searching Now 🔍', style: TextStyle(fontSize: 25, ),
       ), ], ),
      ),
    );
  }
}
