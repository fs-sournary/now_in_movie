// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_images_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieImagesResponse _$MovieImagesResponseFromJson(Map<String, dynamic> json) =>
    MovieImagesResponse(
      id: json['id'] as int?,
      backdrops: (json['backdrops'] as List<dynamic>?)
          ?.map((e) =>
              MovieImagesBackdropResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      posters: (json['posters'] as List<dynamic>?)
          ?.map((e) =>
              MovieImagesPosterResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieImagesResponseToJson(
        MovieImagesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrops': instance.backdrops,
      'posters': instance.posters,
    };

MovieImagesBackdropResponse _$MovieImagesBackdropResponseFromJson(
        Map<String, dynamic> json) =>
    MovieImagesBackdropResponse(
      aspectRatio: (json['aspectRatio'] as num?)?.toDouble(),
      filePath: json['filePath'] as String?,
      height: json['height'] as int?,
      iso6391: json['iso_639_1'] as String?,
      voteAverage: json['voteAverage'] as int?,
      voteCount: json['voteCount'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$MovieImagesBackdropResponseToJson(
        MovieImagesBackdropResponse instance) =>
    <String, dynamic>{
      'aspectRatio': instance.aspectRatio,
      'filePath': instance.filePath,
      'height': instance.height,
      'iso_639_1': instance.iso6391,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
      'width': instance.width,
    };

MovieImagesPosterResponse _$MovieImagesPosterResponseFromJson(
        Map<String, dynamic> json) =>
    MovieImagesPosterResponse(
      aspectRatio: (json['aspectRatio'] as num?)?.toDouble(),
      filePath: json['filePath'] as String?,
      height: json['height'] as int?,
      iso6391: json['iso_639_1'] as String?,
      voteAverage: json['voteAverage'] as int?,
      voteCount: json['voteCount'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$MovieImagesPosterResponseToJson(
        MovieImagesPosterResponse instance) =>
    <String, dynamic>{
      'aspectRatio': instance.aspectRatio,
      'filePath': instance.filePath,
      'height': instance.height,
      'iso_639_1': instance.iso6391,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
      'width': instance.width,
    };
