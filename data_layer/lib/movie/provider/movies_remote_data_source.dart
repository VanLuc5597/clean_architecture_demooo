import 'package:data_layer/movie/model/list_movie_response.dart';
import 'package:injectable/injectable.dart';

import '../../network/movies_api_service.dart';

@injectable
class MoviesRemoteDataSource {
  final MoviesAPIService moviesAPIService;

  const MoviesRemoteDataSource(this.moviesAPIService);

  Future<ListMovieResponse> getPopularMovies(int pageIndex) =>
      moviesAPIService.getPopularMovies(pageIndex);
}
