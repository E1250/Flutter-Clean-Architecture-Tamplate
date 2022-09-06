import 'package:weather/weather/domain/entities/weather.dart';

class WeatherModel extends Weather{
  // now we got data from parent entity and save it here in this model
  WeatherModel(super.id, super.cityName, super.main, super.description, super.pressure);

  // formatting data

  // factory >> create new object
  factory WeatherModel.fromJson(Map<String,dynamic> json){
    return WeatherModel(json['id'], json['name'], json['weather'][0]['main'], json['weather'][0]['description'], json['main']['pressure']);
  }
}