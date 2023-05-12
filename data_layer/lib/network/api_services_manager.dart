import 'package:data_layer/network/movies_api_service.dart';
import 'package:data_layer/network/weather_api_service.dart';
import 'package:dio/dio.dart';

class APIServicesManager {
  static MoviesAPIService? _sMovieAPIService;

  static WeatherAPIService? _sWeatherAPIService;

  static MoviesAPIService getMoviesAPIService() {
    if (_sMovieAPIService == null) {
      final dio = Dio(); // Provide a dio instance
      _sMovieAPIService = MoviesAPIService(dio);
    }
    return _sMovieAPIService!;
  }

  static WeatherAPIService getWeatherAPIService() {
    if (_sWeatherAPIService == null) {
      final dio = Dio(); // Provide a dio instance
      _sWeatherAPIService = WeatherAPIService(dio);
    }
    return _sWeatherAPIService!;
  }
}
