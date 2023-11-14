import 'package:json_annotation/json_annotation.dart';

part 'review_response.g.dart';

@JsonSerializable()
class ReviewResponse {
  const ReviewResponse({
    this.author,
    this.authorDetails,
    this.content,
    this.createdAt,
    this.id,
    this.updatedAt,
    this.url,
  });

  final String? author;
  final ReviewAuthorDetailResponse? authorDetails;
  final String? content;
  final String? createdAt;
  final String? id;
  final String? updatedAt;
  final String? url;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewResponseToJson(this);
}

@JsonSerializable()
class ReviewAuthorDetailResponse {
  const ReviewAuthorDetailResponse({
    this.name,
    this.username,
    this.avatarPath,
    this.rating,
  });

  final String? name;
  final String? username;
  final String? avatarPath;
  final int? rating;

  factory ReviewAuthorDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewAuthorDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewAuthorDetailResponseToJson(this);
}

@JsonSerializable()
class ReviewResultResponse {
  const ReviewResultResponse({
    this.id,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  final int? id;
  final int? page;
  final List<ReviewResponse>? results;
  final int? totalPages;
  final int? totalResults;

  factory ReviewResultResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewResultResponseToJson(this);
}
