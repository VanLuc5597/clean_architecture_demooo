import 'package:data_layer/general/network_bound_resource.dart';
import 'package:data_layer/movie/model/weather_model.dart';
import 'package:data_layer/movie/provider/weather_remote_data_source.dart';
import 'package:domain_layer/general/resource.dart';
import 'package:domain_layer/home/enitiy/weather_entity.dart';
import 'package:domain_layer/home/repository/weather_repository.dart';

class WeatherProvider extends WeatherRepository {
  final WeatherRemoteDataSource weatherRemoteDataSource;

  WeatherProvider(this.weatherRemoteDataSource);

  @override
  Stream<Resource<WeatherEntity>> getWeather() {
    return NetworkBoundResource.networkResource<WeatherModel, WeatherEntity>(
      fetchFromRemote: weatherRemoteDataSource.getWeather(),
      processResponse: (response) => WeatherEntity(
          time: response.data!.updateAt.toString(),
          weatherIcon: response.data!.currentWeather!.weatherIconUrl,
          nameProvince: response.data!.provinceName,
          weatherDescription:
              response.data!.currentWeather!.weatherDescription),
    );
  }
}
