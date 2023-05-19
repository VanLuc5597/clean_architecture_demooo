import 'package:data_layer/db/main_database.dart';
import 'package:data_layer/network/api_services_manager.dart';
import 'package:data_layer/network/movies_api_service.dart';
import 'package:data_layer/network/weather_api_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @injectable
  MoviesAPIService get moviesAPIService =>
      APIServicesManager.getMoviesAPIService();

  @injectable
  WeatherAPIService get weatherAPIService =>
      APIServicesManager.getWeatherAPIService();

  @lazySingleton
  MainDatabase get mainDatabase => MainDatabase();
}
