import 'package:data_layer/db/main_database.dart';
import 'package:data_layer/network/api_services_manager.dart';
import 'package:data_layer/network/movies_api_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @injectable
  MoviesAPIService get moviesAPIService =>
      APIServicesManager.getMoviesAPIService();

  @lazySingleton
  MainDatabase get mainDatabase => MainDatabase();
}
