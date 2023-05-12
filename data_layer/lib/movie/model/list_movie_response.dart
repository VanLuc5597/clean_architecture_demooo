import 'package:data_layer/movie/model/movie_model.dart';

class ListMovieResponse {
  ListMovieResponse({
    this.page,
    this.listMovie,
    this.totalPages,
    this.totalResults,
  });

  ListMovieResponse.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      listMovie = [];
      json['results'].forEach((v) {
        listMovie?.add(MovieModel.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  int? page;
  List<MovieModel>? listMovie;
  int? totalPages;
  int? totalResults;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    if (listMovie != null) {
      map['results'] = listMovie?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }
}
