import 'package:domain_layer/movie/entity/movie_entity.dart';
import 'package:flutter/material.dart';

@immutable
class PopularMoviesCubitState {
  final List<MovieEntity> popularMovies;
  final int nextPageKey;

  const PopularMoviesCubitState(this.popularMovies, this.nextPageKey);
}

class PopularMoviesInitialCubitState extends PopularMoviesCubitState {
  PopularMoviesInitialCubitState() : super(List.empty(growable: true), -1);
}
