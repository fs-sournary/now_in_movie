// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailGenreResponse _$MovieDetailGenreResponseFromJson(
        Map<String, dynamic> json) =>
    MovieDetailGenreResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MovieDetailGenreResponseToJson(
        MovieDetailGenreResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

MovieDetailProductionCompanyResponse
    _$MovieDetailProductionCompanyResponseFromJson(Map<String, dynamic> json) =>
        MovieDetailProductionCompanyResponse(
          id: json['id'] as int?,
          logoPath: json['logoPath'] as String?,
          name: json['name'] as String?,
          originCountry: json['originCountry'] as String?,
        );

Map<String, dynamic> _$MovieDetailProductionCompanyResponseToJson(
        MovieDetailProductionCompanyResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logoPath': instance.logoPath,
      'name': instance.name,
      'originCountry': instance.originCountry,
    };

MovieDetailProductionCountryResponse
    _$MovieDetailProductionCountryResponseFromJson(Map<String, dynamic> json) =>
        MovieDetailProductionCountryResponse(
          iso31661: json['iso_3166_1'] as String?,
          name: json['name'] as String?,
        );

Map<String, dynamic> _$MovieDetailProductionCountryResponseToJson(
        MovieDetailProductionCountryResponse instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
    };

MovieDetailSpokenLanguageResponse _$MovieDetailSpokenLanguageResponseFromJson(
        Map<String, dynamic> json) =>
    MovieDetailSpokenLanguageResponse(
      ios6391: json['iso_639_1'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MovieDetailSpokenLanguageResponseToJson(
        MovieDetailSpokenLanguageResponse instance) =>
    <String, dynamic>{
      'iso_639_1': instance.ios6391,
      'name': instance.name,
    };

MovieDetailResponse _$MovieDetailResponseFromJson(Map<String, dynamic> json) =>
    MovieDetailResponse(
      adult: json['adult'] as bool?,
      backdropPath: json['backdropPath'] as String?,
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) =>
              MovieDetailGenreResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      imdbId: json['imdbId'] as String?,
      originalLanguage: json['originalLanguage'] as String?,
      originalTitle: json['originalTitle'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['posterPath'] as String?,
      productionCompanies: (json['productionCompanies'] as List<dynamic>?)
          ?.map((e) => MovieDetailProductionCompanyResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      productionCountries: (json['productionCountries'] as List<dynamic>?)
          ?.map((e) => MovieDetailProductionCountryResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      releaseDate: json['releaseDate'] as String?,
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int?,
      spokenLanguages: (json['spokenLanguages'] as List<dynamic>?)
          ?.map((e) => MovieDetailSpokenLanguageResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: json['voteCount'] as int?,
    );

Map<String, dynamic> _$MovieDetailResponseToJson(
        MovieDetailResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdbId': instance.imdbId,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'productionCompanies': instance.productionCompanies,
      'productionCountries': instance.productionCountries,
      'releaseDate': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spokenLanguages': instance.spokenLanguages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
