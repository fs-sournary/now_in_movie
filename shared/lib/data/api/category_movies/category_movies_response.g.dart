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
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$CategoryMoviesResponseToJson(
        CategoryMoviesResponse instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
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
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$CategoryMovieResponseToJson(
        CategoryMovieResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
