import 'package:json_annotation/json_annotation.dart';

part 'movie_detail_response.g.dart';

@JsonSerializable()
class MovieDetailGenreResponse {
  const MovieDetailGenreResponse({this.id, this.name});

  final int? id;
  final String? name;

  factory MovieDetailGenreResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailGenreResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailGenreResponseToJson(this);
}

@JsonSerializable()
class MovieDetailProductionCompanyResponse {
  const MovieDetailProductionCompanyResponse({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;

  factory MovieDetailProductionCompanyResponse.fromJson(
      Map<String, dynamic> json) {
    return _$MovieDetailProductionCompanyResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MovieDetailProductionCompanyResponseToJson(this);
  }
}

@JsonSerializable()
class MovieDetailProductionCountryResponse {
  const MovieDetailProductionCountryResponse({this.iso31661, this.name});

  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  final String? name;

  factory MovieDetailProductionCountryResponse.fromJson(
      Map<String, dynamic> json) {
    return _$MovieDetailProductionCountryResponseFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$MovieDetailProductionCountryResponseToJson(this);
}

@JsonSerializable()
class MovieDetailSpokenLanguageResponse {
  const MovieDetailSpokenLanguageResponse({this.ios6391, this.name});

  @JsonKey(name: 'iso_639_1')
  final String? ios6391;
  final String? name;

  factory MovieDetailSpokenLanguageResponse.fromJson(
      Map<String, dynamic> json) {
    return _$MovieDetailSpokenLanguageResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MovieDetailSpokenLanguageResponseToJson(this);
  }
}

@JsonSerializable()
class MovieDetailResponse {
  const MovieDetailResponse({
    this.adult,
    this.backdropPath,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  final bool? adult;
  final String? backdropPath;
  final int? budget;
  final List<MovieDetailGenreResponse>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<MovieDetailProductionCompanyResponse>? productionCompanies;
  final List<MovieDetailProductionCountryResponse>? productionCountries;
  final String? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<MovieDetailSpokenLanguageResponse>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailResponseToJson(this);
}
