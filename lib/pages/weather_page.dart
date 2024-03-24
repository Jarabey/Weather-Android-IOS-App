import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_services.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
 State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  //Api Key
    final _weatherService = WeatherService(1e0732b799c18398bef18284d800ddcc
);
    Weather? _weather;

  //Fetch Weather
  _fetchWeather() async

    //Get the current City
    String cityName = await _weatherService.getCurrentCity();

    //Get weather for City
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }

// Any errors
catch (e){
  print(e);
  }
}
  //Weather Animations

  // Init State
  void initState() {
    super.initState
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}