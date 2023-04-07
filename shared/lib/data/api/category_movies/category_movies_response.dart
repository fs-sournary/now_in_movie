import 'package:json_annotation/json_annotation.dart';

part 'category_movies_response.g.dart';

class CategoryMoviesResponse {
  const CategoryMoviesResponse({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  final CategoryMovieDateResponse? dates;
  final int? page;
  final List<CategoryMovieResponse>? results;
  final int? totalPages;
  final int? totalResults;

  factory CategoryMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryMoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryMoviesResponseToJson(this);
}

class CategoryMovieDateResponse {
  const CategoryMovieDateResponse({this.maximum, this.minimum});

  final String? maximum;
  final String? minimum;

  factory CategoryMovieDateResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryMovieDateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryMovieDateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CategoryMovieResponse {
  const CategoryMovieResponse({
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

  factory CategoryMovieResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryMovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryMovieResponseToJson(this);
}
