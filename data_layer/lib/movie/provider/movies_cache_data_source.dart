import 'package:data_layer/db/main_database.dart';
import 'package:domain_layer/movie/entity/movie_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class MoviesCacheDataSource {
  final MainDatabase mainDatabase;

  MoviesCacheDataSource(this.mainDatabase);

  Future<List<MovieEntity>> getCachedPopularMovies(int page) =>
      mainDatabase.getMoviesByPage(page);

  Future<void> insertPopularMovies(int page, List<MovieEntity>? movies) {
    if (movies != null && movies.isNotEmpty) {
      return mainDatabase.insertMoviePage(page, movies);
    } else {
      return Future(() => null);
    }
  }
}
