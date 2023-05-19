import 'package:domain_layer/general/network_status.dart';
import 'package:domain_layer/home/enitiy/weather_entity.dart';
import 'package:domain_layer/home/usecase/get_weather_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WeatherProvider extends ChangeNotifier {
  final _getWeatherUseCase = GetIt.instance.get<GetWeatherUseCase>();
  WeatherEntity? weatherEntity;

  WeatherProvider() {
    fetchWeather();
  }

  void fetchWeather() {
    _getWeatherUseCase.invoke(null).listen((event) {
      if (event.networkStatus == NetworkStatus.success) {
        if (event.data != null) {
          weatherEntity = event.data;
          notifyListeners();
        }
      }
    });
  }
}

final weatherProvider = ChangeNotifierProvider((ref) => WeatherProvider());
