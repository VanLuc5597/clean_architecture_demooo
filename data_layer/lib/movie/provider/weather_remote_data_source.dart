import 'package:data_layer/movie/model/weather_model.dart';
import 'package:data_layer/network/weather_api_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class WeatherRemoteDataSource {
  final WeatherAPIService weatherAPIService;

  WeatherRemoteDataSource(this.weatherAPIService);

  Future<WeatherModel> getWeather() => weatherAPIService.getWeather();
}
