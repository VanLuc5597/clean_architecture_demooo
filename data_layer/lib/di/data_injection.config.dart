// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data_layer/db/main_database.dart' as _i3;
import 'package:data_layer/di/network_module.dart' as _i13;
import 'package:data_layer/movie/provider/movies_cache_data_source.dart' as _i5;
import 'package:data_layer/movie/provider/movies_provider.dart' as _i8;
import 'package:data_layer/movie/provider/movies_remote_data_source.dart'
    as _i6;
import 'package:data_layer/movie/provider/weather_provider.dart' as _i12;
import 'package:data_layer/movie/provider/weather_remote_data_source.dart'
    as _i10;
import 'package:data_layer/network/movies_api_service.dart' as _i4;
import 'package:data_layer/network/weather_api_service.dart' as _i9;
import 'package:domain_layer/home/repository/weather_repository.dart' as _i11;
import 'package:domain_layer/movie/repository/movies_repository.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  gh.lazySingleton<_i3.MainDatabase>(() => networkModule.mainDatabase);
  gh.factory<_i4.MoviesAPIService>(() => networkModule.moviesAPIService);
  gh.factory<_i5.MoviesCacheDataSource>(
      () => _i5.MoviesCacheDataSource(gh<_i3.MainDatabase>()));
  gh.factory<_i6.MoviesRemoteDataSource>(
      () => _i6.MoviesRemoteDataSource(gh<_i4.MoviesAPIService>()));
  gh.factory<_i7.MoviesRepository>(() => _i8.MoviesProvider(
        gh<_i6.MoviesRemoteDataSource>(),
        gh<_i5.MoviesCacheDataSource>(),
      ));
  gh.factory<_i9.WeatherAPIService>(() => networkModule.weatherAPIService);
  gh.factory<_i10.WeatherRemoteDataSource>(
      () => _i10.WeatherRemoteDataSource(gh<_i9.WeatherAPIService>()));
  gh.factory<_i11.WeatherRepository>(
      () => _i12.WeatherProvider(gh<_i10.WeatherRemoteDataSource>()));
  return getIt;
}

class _$NetworkModule extends _i13.NetworkModule {}
