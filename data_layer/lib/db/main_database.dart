import 'dart:io';

import 'package:data_layer/movie/model/cached_movies.dart';
import 'package:domain_layer/movie/entity/movie_entity.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'main_database.g.dart';

@DriftDatabase(tables: [CachedMovies])
class MainDatabase extends _$MainDatabase {
  MainDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<MovieEntity>> getMoviesByPage(int page) =>
      (select(cachedMovies)..where((t) => t.page.equals(page)))
          .map((e) => MovieEntity(
              page: e.page,
              id: e.id,
              title: e.title,
              originalTitle: e.originalTitle,
              posterPath: e.posterPath,
              backdropPath: e.backdropPath,
              releaseDate: e.releaseDate,
              voteCount: e.voteCount,
              voteAverage: e.voteAverage,
              description: e.description))
          .get();

  Future<void> insertMoviePage(int page, List<MovieEntity> list) async {
    await batch((batch) {
      batch.insertAll(
          cachedMovies,
          list.map((e) => CachedMoviesCompanion.insert(
              page: page,
              id: e.id,
              title: e.title,
              originalTitle: e.originalTitle,
              posterPath: e.posterPath,
              backdropPath: e.backdropPath,
              releaseDate: e.releaseDate,
              voteCount: e.voteCount,
              voteAverage: e.voteAverage,
              description: e.description)));
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
