import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName{
  final BaseWeatherRepository repository;
  GetWeatherByCountryName(this.repository);

  // calling repository in domain layer to get data
  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }

}