// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryMoviesResponse _$CategoryMoviesResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryMoviesResponse(
      dates: json['dates'] == null
          ? null
          : CategoryMovieDateResponse.fromJson(
              json['dates'] as Map<String, dynamic>),
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map(
              (e) => CategoryMovieResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      totalResults: json['totalResults'] as int?,
    );

Map<String, dynamic> _$CategoryMoviesResponseToJson(
        CategoryMoviesResponse instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };

CategoryMovieDateResponse _$CategoryMovieDateResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryMovieDateResponse(
      maximum: json['maximum'] as String?,
      minimum: json['minimum'] as String?,
    );

Map<String, dynamic> _$CategoryMovieDateResponseToJson(
        CategoryMovieDateResponse instance) =>
    <String, dynamic>{
      'maximum': instance.maximum,
      'minimum': instance.minimum,
    };

CategoryMovieResponse _$CategoryMovieResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryMovieResponse(
      adult: json['adult'] as bool?,
      backdropPath: json['backdropPath'] as String?,
      genreIds:
          (json['genreIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      id: json['id'] as int?,
      originalLanguage: json['originalLanguage'] as String?,
      originalTitle: json['originalTitle'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['posterPath'] as String?,
      releaseDate: json['releaseDate'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: json['voteCount'] as int?,
    );

Map<String, dynamic> _$CategoryMovieResponseToJson(
        CategoryMovieResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'genreIds': instance.genreIds,
      'id': instance.id,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
