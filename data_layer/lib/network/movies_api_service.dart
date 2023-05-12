import 'package:data_layer/movie/model/list_movie_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_api_service.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3/')
abstract class MoviesAPIService {
  factory MoviesAPIService(Dio dio, {String baseUrl}) = _MoviesAPIService;

  @GET("/movie/popular?api_key=db7061c8f73263dff602173382fb4dc2&language=vi-VN")
  Future<ListMovieResponse> getPopularMovies(@Query("page") int page);
}