import 'package:flutter/material.dart';
import 'package:weather/weather/data/data_source/remote_data_source.dart';
import 'package:weather/weather/data/repository/weather_repository.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';
import 'package:weather/weather/domain/usecase/get_weather_by_country.dart';

void main()  async{
  // here we will use case

  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository=WeatherRepository(baseRemoteDataSource);
  Weather weather= await GetWeatherByCountryName(baseWeatherRepository).execute("egypt");

  runApp(const MyApp());
}

/*
This is Clean Architecture and not (MVVM >> design pattern)
first to know >> always start with domain layer >> it is most stable and not be changed
* */

// this is presentation layer too

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(),
    );
  }
}
