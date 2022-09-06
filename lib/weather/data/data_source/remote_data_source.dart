import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/weather/data/models/weather_model.dart';
import 'package:weather/weather/domain/entities/weather.dart';

abstract class BaseRemoteDataSource{
  // concrete implementation
  // use model to use json format
  Future<WeatherModel> getCurrentWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel> getCurrentWeatherByCountryName(String countryName) async {
      try{
        var response = await Dio().get('${AppConstants.apiBaseURL}/weather?q=$countryName&appid=${AppConstants.apiKey}');
        return WeatherModel.fromJson(response.data);
      }catch(e){
        return WeatherModel(0,"","","",0);
      }
  }

}