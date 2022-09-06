import 'package:weather/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository{
  // concrete implementation

  // contract
  // abstract >> just methods without events
  // read about solid principles
  // https://www.freecodecamp.org/news/solid-principles-explained-in-plain-english/
  /*
      The Single Responsibility Principle
      The Open-Closed Principle
      The Liskov Substitution Principle
      The Interface Segregation Principle
      The Dependency Inversion Principle
   */

  Future<Weather> getWeatherByCityName(String cityName);
}