import 'dart:math';

import 'package:data_layer/movie/model/list_movie_response.dart';
import 'package:data_layer/movie/provider/movies_cache_data_source.dart';
import 'package:domain_layer/general/resource.dart';
import 'package:domain_layer/movie/entity/movie_entity.dart';
import 'package:domain_layer/movie/repository/movies_repository.dart';
import 'package:injectable/injectable.dart';

import '../../general/network_bound_resource.dart';
import 'movies_remote_data_source.dart';

@Injectable(as: MoviesRepository)
class MoviesProvider extends MoviesRepository {
  final MoviesRemoteDataSource moviesRemoteDataSource;
  final MoviesCacheDataSource moviesCacheDataSource;

  const MoviesProvider(this.moviesRemoteDataSource, this.moviesCacheDataSource);

  @override
  Stream<Resource<List<MovieEntity>?>> getPopularMovies(int pageIndex) {
    return NetworkBoundResource.cachingNetworkResource<ListMovieResponse, List<MovieEntity>?>(
        loadFromDb: moviesCacheDataSource.getCachedPopularMovies(pageIndex),
        shouldFetch: (_) => true,
        fetchFromRemote: moviesRemoteDataSource.getPopularMovies(pageIndex),
        processResponse: (response) => response.listMovie!
            .map((movieModel) => MovieEntity(
                id: movieModel.id!,
                title: movieModel.title!,
                originalTitle: movieModel.originalTitle!,
                posterPath:
                    movieModel.posterPath == null ? "" : movieModel.posterPath!,
                backdropPath: movieModel.backdropPath == null
                    ? ""
                    : movieModel.backdropPath!,
                releaseDate: movieModel.releaseDate == null
                    ? ""
                    : movieModel.releaseDate!,
                voteAverage: movieModel.voteAverage == null
                    ? 0.0
                    : movieModel.voteAverage!,
                voteCount:
                    movieModel.voteCount == null ? 0 : movieModel.voteCount!,
                description: movieModel.overview!,
                page: pageIndex))
            .toList(),
        saveCallResult: (list) =>
            moviesCacheDataSource.insertPopularMovies(pageIndex, list));
  }
}
