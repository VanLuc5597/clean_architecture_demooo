// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class CachedMovie extends DataClass implements Insertable<CachedMovie> {
  final int page;
  final int id;
  final String title;
  final String originalTitle;
  final String posterPath;
  final String backdropPath;
  final String releaseDate;
  final double voteAverage;
  final String description;
  final int voteCount;
  CachedMovie(
      {required this.page,
      required this.id,
      required this.title,
      required this.originalTitle,
      required this.posterPath,
      required this.backdropPath,
      required this.releaseDate,
      required this.voteAverage,
      required this.description,
      required this.voteCount});
  factory CachedMovie.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CachedMovie(
      page: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}page'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      originalTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}original_title'])!,
      posterPath: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}poster_path'])!,
      backdropPath: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}backdrop_path'])!,
      releaseDate: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}release_date'])!,
      voteAverage: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_average'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      voteCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_count'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['page'] = Variable<int>(page);
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['original_title'] = Variable<String>(originalTitle);
    map['poster_path'] = Variable<String>(posterPath);
    map['backdrop_path'] = Variable<String>(backdropPath);
    map['release_date'] = Variable<String>(releaseDate);
    map['vote_average'] = Variable<double>(voteAverage);
    map['description'] = Variable<String>(description);
    map['vote_count'] = Variable<int>(voteCount);
    return map;
  }

  CachedMoviesCompanion toCompanion(bool nullToAbsent) {
    return CachedMoviesCompanion(
      page: Value(page),
      id: Value(id),
      title: Value(title),
      originalTitle: Value(originalTitle),
      posterPath: Value(posterPath),
      backdropPath: Value(backdropPath),
      releaseDate: Value(releaseDate),
      voteAverage: Value(voteAverage),
      description: Value(description),
      voteCount: Value(voteCount),
    );
  }

  factory CachedMovie.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedMovie(
      page: serializer.fromJson<int>(json['page']),
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      originalTitle: serializer.fromJson<String>(json['originalTitle']),
      posterPath: serializer.fromJson<String>(json['posterPath']),
      backdropPath: serializer.fromJson<String>(json['backdropPath']),
      releaseDate: serializer.fromJson<String>(json['releaseDate']),
      voteAverage: serializer.fromJson<double>(json['voteAverage']),
      description: serializer.fromJson<String>(json['description']),
      voteCount: serializer.fromJson<int>(json['voteCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'page': serializer.toJson<int>(page),
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'originalTitle': serializer.toJson<String>(originalTitle),
      'posterPath': serializer.toJson<String>(posterPath),
      'backdropPath': serializer.toJson<String>(backdropPath),
      'releaseDate': serializer.toJson<String>(releaseDate),
      'voteAverage': serializer.toJson<double>(voteAverage),
      'description': serializer.toJson<String>(description),
      'voteCount': serializer.toJson<int>(voteCount),
    };
  }

  CachedMovie copyWith(
          {int? page,
          int? id,
          String? title,
          String? originalTitle,
          String? posterPath,
          String? backdropPath,
          String? releaseDate,
          double? voteAverage,
          String? description,
          int? voteCount}) =>
      CachedMovie(
        page: page ?? this.page,
        id: id ?? this.id,
        title: title ?? this.title,
        originalTitle: originalTitle ?? this.originalTitle,
        posterPath: posterPath ?? this.posterPath,
        backdropPath: backdropPath ?? this.backdropPath,
        releaseDate: releaseDate ?? this.releaseDate,
        voteAverage: voteAverage ?? this.voteAverage,
        description: description ?? this.description,
        voteCount: voteCount ?? this.voteCount,
      );
  @override
  String toString() {
    return (StringBuffer('CachedMovie(')
          ..write('page: $page, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('posterPath: $posterPath, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('description: $description, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(page, id, title, originalTitle, posterPath,
      backdropPath, releaseDate, voteAverage, description, voteCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedMovie &&
          other.page == this.page &&
          other.id == this.id &&
          other.title == this.title &&
          other.originalTitle == this.originalTitle &&
          other.posterPath == this.posterPath &&
          other.backdropPath == this.backdropPath &&
          other.releaseDate == this.releaseDate &&
          other.voteAverage == this.voteAverage &&
          other.description == this.description &&
          other.voteCount == this.voteCount);
}

class CachedMoviesCompanion extends UpdateCompanion<CachedMovie> {
  final Value<int> page;
  final Value<int> id;
  final Value<String> title;
  final Value<String> originalTitle;
  final Value<String> posterPath;
  final Value<String> backdropPath;
  final Value<String> releaseDate;
  final Value<double> voteAverage;
  final Value<String> description;
  final Value<int> voteCount;
  const CachedMoviesCompanion({
    this.page = const Value.absent(),
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.backdropPath = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.description = const Value.absent(),
    this.voteCount = const Value.absent(),
  });
  CachedMoviesCompanion.insert({
    required int page,
    required int id,
    required String title,
    required String originalTitle,
    required String posterPath,
    required String backdropPath,
    required String releaseDate,
    required double voteAverage,
    required String description,
    required int voteCount,
  })  : page = Value(page),
        id = Value(id),
        title = Value(title),
        originalTitle = Value(originalTitle),
        posterPath = Value(posterPath),
        backdropPath = Value(backdropPath),
        releaseDate = Value(releaseDate),
        voteAverage = Value(voteAverage),
        description = Value(description),
        voteCount = Value(voteCount);
  static Insertable<CachedMovie> custom({
    Expression<int>? page,
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? originalTitle,
    Expression<String>? posterPath,
    Expression<String>? backdropPath,
    Expression<String>? releaseDate,
    Expression<double>? voteAverage,
    Expression<String>? description,
    Expression<int>? voteCount,
  }) {
    return RawValuesInsertable({
      if (page != null) 'page': page,
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (originalTitle != null) 'original_title': originalTitle,
      if (posterPath != null) 'poster_path': posterPath,
      if (backdropPath != null) 'backdrop_path': backdropPath,
      if (releaseDate != null) 'release_date': releaseDate,
      if (voteAverage != null) 'vote_average': voteAverage,
      if (description != null) 'description': description,
      if (voteCount != null) 'vote_count': voteCount,
    });
  }

  CachedMoviesCompanion copyWith(
      {Value<int>? page,
      Value<int>? id,
      Value<String>? title,
      Value<String>? originalTitle,
      Value<String>? posterPath,
      Value<String>? backdropPath,
      Value<String>? releaseDate,
      Value<double>? voteAverage,
      Value<String>? description,
      Value<int>? voteCount}) {
    return CachedMoviesCompanion(
      page: page ?? this.page,
      id: id ?? this.id,
      title: title ?? this.title,
      originalTitle: originalTitle ?? this.originalTitle,
      posterPath: posterPath ?? this.posterPath,
      backdropPath: backdropPath ?? this.backdropPath,
      releaseDate: releaseDate ?? this.releaseDate,
      voteAverage: voteAverage ?? this.voteAverage,
      description: description ?? this.description,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (page.present) {
      map['page'] = Variable<int>(page.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String>(posterPath.value);
    }
    if (backdropPath.present) {
      map['backdrop_path'] = Variable<String>(backdropPath.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<String>(releaseDate.value);
    }
    if (voteAverage.present) {
      map['vote_average'] = Variable<double>(voteAverage.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (voteCount.present) {
      map['vote_count'] = Variable<int>(voteCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedMoviesCompanion(')
          ..write('page: $page, ')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('posterPath: $posterPath, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('description: $description, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }
}

class $CachedMoviesTable extends CachedMovies
    with TableInfo<$CachedMoviesTable, CachedMovie> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedMoviesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _pageMeta = const VerificationMeta('page');
  @override
  late final GeneratedColumn<int?> page = GeneratedColumn<int?>(
      'page', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _originalTitleMeta =
      const VerificationMeta('originalTitle');
  @override
  late final GeneratedColumn<String?> originalTitle = GeneratedColumn<String?>(
      'original_title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _posterPathMeta = const VerificationMeta('posterPath');
  @override
  late final GeneratedColumn<String?> posterPath = GeneratedColumn<String?>(
      'poster_path', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _backdropPathMeta =
      const VerificationMeta('backdropPath');
  @override
  late final GeneratedColumn<String?> backdropPath = GeneratedColumn<String?>(
      'backdrop_path', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _releaseDateMeta =
      const VerificationMeta('releaseDate');
  @override
  late final GeneratedColumn<String?> releaseDate = GeneratedColumn<String?>(
      'release_date', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _voteAverageMeta =
      const VerificationMeta('voteAverage');
  @override
  late final GeneratedColumn<double?> voteAverage = GeneratedColumn<double?>(
      'vote_average', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _voteCountMeta = const VerificationMeta('voteCount');
  @override
  late final GeneratedColumn<int?> voteCount = GeneratedColumn<int?>(
      'vote_count', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        page,
        id,
        title,
        originalTitle,
        posterPath,
        backdropPath,
        releaseDate,
        voteAverage,
        description,
        voteCount
      ];
  @override
  String get aliasedName => _alias ?? 'cached_movies';
  @override
  String get actualTableName => 'cached_movies';
  @override
  VerificationContext validateIntegrity(Insertable<CachedMovie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('page')) {
      context.handle(
          _pageMeta, page.isAcceptableOrUnknown(data['page']!, _pageMeta));
    } else if (isInserting) {
      context.missing(_pageMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('original_title')) {
      context.handle(
          _originalTitleMeta,
          originalTitle.isAcceptableOrUnknown(
              data['original_title']!, _originalTitleMeta));
    } else if (isInserting) {
      context.missing(_originalTitleMeta);
    }
    if (data.containsKey('poster_path')) {
      context.handle(
          _posterPathMeta,
          posterPath.isAcceptableOrUnknown(
              data['poster_path']!, _posterPathMeta));
    } else if (isInserting) {
      context.missing(_posterPathMeta);
    }
    if (data.containsKey('backdrop_path')) {
      context.handle(
          _backdropPathMeta,
          backdropPath.isAcceptableOrUnknown(
              data['backdrop_path']!, _backdropPathMeta));
    } else if (isInserting) {
      context.missing(_backdropPathMeta);
    }
    if (data.containsKey('release_date')) {
      context.handle(
          _releaseDateMeta,
          releaseDate.isAcceptableOrUnknown(
              data['release_date']!, _releaseDateMeta));
    } else if (isInserting) {
      context.missing(_releaseDateMeta);
    }
    if (data.containsKey('vote_average')) {
      context.handle(
          _voteAverageMeta,
          voteAverage.isAcceptableOrUnknown(
              data['vote_average']!, _voteAverageMeta));
    } else if (isInserting) {
      context.missing(_voteAverageMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('vote_count')) {
      context.handle(_voteCountMeta,
          voteCount.isAcceptableOrUnknown(data['vote_count']!, _voteCountMeta));
    } else if (isInserting) {
      context.missing(_voteCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  CachedMovie map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CachedMovie.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CachedMoviesTable createAlias(String alias) {
    return $CachedMoviesTable(attachedDatabase, alias);
  }
}

abstract class _$MainDatabase extends GeneratedDatabase {
  _$MainDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CachedMoviesTable cachedMovies = $CachedMoviesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cachedMovies];
}
