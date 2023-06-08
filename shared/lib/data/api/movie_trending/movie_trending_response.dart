import 'package:json_annotation/json_annotation.dart';

part 'movie_trending_response.g.dart';

@JsonSerializable()
class MovieTrendingResponse {
  const MovieTrendingResponse({
    this.adult,
    this.backdropPath,
    this.id,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.genreIds,
    this.popularity,
    this.releaseDate,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  final bool? adult;
  final String? backdropPath;
  final int? id;
  final String? title;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final String? posterPath;
  final String? mediaType;
  final List<int>? genreIds;
  final double? popularity;
  final String? releaseDate;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  factory MovieTrendingResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieTrendingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieTrendingResponseToJson(this);
}

@JsonSerializable()
class MovieTrendingResultResponse {
  const MovieTrendingResultResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  final int? page;
  final List<MovieTrendingResponse>? results;
  final int? totalPages;
  final int? totalResults;

  factory MovieTrendingResultResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieTrendingResultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieTrendingResultResponseToJson(this);
}
