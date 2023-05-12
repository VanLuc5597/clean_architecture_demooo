import 'package:drift/drift.dart';

class CachedMovies extends Table {
  IntColumn get page => integer()();

  IntColumn get id => integer()();

  TextColumn get title => text()();

  TextColumn get originalTitle => text()();

  TextColumn get posterPath => text()();

  TextColumn get backdropPath => text()();

  TextColumn get releaseDate => text()();

  RealColumn get voteAverage => real()();

  TextColumn get description => text()();

  IntColumn get voteCount => integer()();
}
