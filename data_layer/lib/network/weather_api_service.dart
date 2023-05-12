import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../movie/model/weather_model.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: 'http://api-web.thainguyenid.vn/')
abstract class WeatherAPIService {
  factory WeatherAPIService(Dio dio, {String baseUrl}) = _WeatherAPIService;

  @GET("pub/weatherProvince/64")
  Future<WeatherModel> getWeather();
}