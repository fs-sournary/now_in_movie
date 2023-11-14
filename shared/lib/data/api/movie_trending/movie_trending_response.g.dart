// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_trending_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieTrendingResponse _$MovieTrendingResponseFromJson(
        Map<String, dynamic> json) =>
    MovieTrendingResponse(
      adult: json['adult'] as bool?,
      backdropPath: json['backdropPath'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      originalLanguage: json['originalLanguage'] as String?,
      originalTitle: json['originalTitle'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['posterPath'] as String?,
      mediaType: json['mediaType'] as String?,
      genreIds:
          (json['genreIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      popularity: (json['popularity'] as num?)?.toDouble(),
      releaseDate: json['releaseDate'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: json['voteCount'] as int?,
    );

Map<String, dynamic> _$MovieTrendingResponseToJson(
        MovieTrendingResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'posterPath': instance.posterPath,
      'mediaType': instance.mediaType,
      'genreIds': instance.genreIds,
      'popularity': instance.popularity,
      'releaseDate': instance.releaseDate,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };

MovieTrendingResultResponse _$MovieTrendingResultResponseFromJson(
        Map<String, dynamic> json) =>
    MovieTrendingResultResponse(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map(
              (e) => MovieTrendingResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      totalResults: json['totalResults'] as int?,
    );

Map<String, dynamic> _$MovieTrendingResultResponseToJson(
        MovieTrendingResultResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
