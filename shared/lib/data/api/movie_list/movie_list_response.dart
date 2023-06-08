import 'package:json_annotation/json_annotation.dart';

part 'movie_list_response.g.dart';

@JsonSerializable()
class DateMovieListResponse {
  const DateMovieListResponse({this.maximum, this.minimum});

  final String? maximum;
  final String? minimum;

  factory DateMovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$DateMovieListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DateMovieListResponseToJson(this);
}

@JsonSerializable()
class MovieListResponse {
  const MovieListResponse({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  factory MovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListResponseToJson(this);
}

@JsonSerializable()
class MovieListResultResponse {
  const MovieListResultResponse({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  final DateMovieListResponse? dates;
  final int? page;
  final List<MovieListResponse>? results;
  final int? totalPages;
  final int? totalResults;

  factory MovieListResultResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieListResultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListResultResponseToJson(this);
}
