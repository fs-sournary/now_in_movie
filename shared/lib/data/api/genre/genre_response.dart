import 'package:json_annotation/json_annotation.dart';

part 'genre_response.g.dart';

@JsonSerializable()
class GenreResponse {
  const GenreResponse({this.id, this.name});

  final int? id;
  final String? name;

  factory GenreResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenreResponseToJson(this);
}

@JsonSerializable()
class GenreResultResponse {
  const GenreResultResponse({this.genres});

  final List<GenreResponse>? genres;

  factory GenreResultResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreResultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenreResultResponseToJson(this);
}
