// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailResponse _$MovieDetailResponseFromJson(Map<String, dynamic> json) =>
    MovieDetailResponse(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) =>
              MovieDetailGenreResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      imdbId: json['imdb_id'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      productionCompanies: (json['production_companies'] as List<dynamic>?)
          ?.map((e) => MovieDetailProductionCompanyResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      productionCountries: (json['production_countries'] as List<dynamic>?)
          ?.map((e) => MovieDetailProductionCountryResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      releaseDate: json['release_date'] as String?,
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int?,
      spokenLanguages: (json['spoken_languages'] as List<dynamic>?)
          ?.map((e) => MovieDetailSpokenLanguageResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$MovieDetailResponseToJson(
        MovieDetailResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'production_companies': instance.productionCompanies,
      'production_countries': instance.productionCountries,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spoken_languages': instance.spokenLanguages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };

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
          logoPath: json['logo_path'] as String?,
          name: json['name'] as String?,
          originCountry: json['origin_country'] as String?,
        );

Map<String, dynamic> _$MovieDetailProductionCompanyResponseToJson(
        MovieDetailProductionCompanyResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
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
