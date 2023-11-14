// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreResponse _$GenreResponseFromJson(Map<String, dynamic> json) =>
    GenreResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GenreResponseToJson(GenreResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GenreResultResponse _$GenreResultResponseFromJson(Map<String, dynamic> json) =>
    GenreResultResponse(
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenreResultResponseToJson(
        GenreResultResponse instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
