// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewResponse _$ReviewResponseFromJson(Map<String, dynamic> json) =>
    ReviewResponse(
      author: json['author'] as String?,
      authorDetails: json['authorDetails'] == null
          ? null
          : ReviewAuthorDetailResponse.fromJson(
              json['authorDetails'] as Map<String, dynamic>),
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
      id: json['id'] as String?,
      updatedAt: json['updatedAt'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ReviewResponseToJson(ReviewResponse instance) =>
    <String, dynamic>{
      'author': instance.author,
      'authorDetails': instance.authorDetails,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'url': instance.url,
    };

ReviewAuthorDetailResponse _$ReviewAuthorDetailResponseFromJson(
        Map<String, dynamic> json) =>
    ReviewAuthorDetailResponse(
      name: json['name'] as String?,
      username: json['username'] as String?,
      avatarPath: json['avatarPath'] as String?,
      rating: json['rating'] as int?,
    );

Map<String, dynamic> _$ReviewAuthorDetailResponseToJson(
        ReviewAuthorDetailResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'avatarPath': instance.avatarPath,
      'rating': instance.rating,
    };

ReviewResultResponse _$ReviewResultResponseFromJson(
        Map<String, dynamic> json) =>
    ReviewResultResponse(
      id: json['id'] as int?,
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ReviewResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      totalResults: json['totalResults'] as int?,
    );

Map<String, dynamic> _$ReviewResultResponseToJson(
        ReviewResultResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
