import 'package:json_annotation/json_annotation.dart';

part 'movie_images_response.g.dart';

class MovieImagesResponse {
  const MovieImagesResponse({
    this.id,
    this.backdrops,
    this.posters,
  });

  final int? id;
  final List<MovieImagesBackdropResponse>? backdrops;
  final List<MovieImagesPosterResponse>? posters;

  factory MovieImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieImagesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieImagesResponseToJson(this);
}

class MovieImagesBackdropResponse {
  final double? aspectRatio;
  final String? filePath;
  final int? height;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  final int? voteAverage;
  final int? voteCount;
  final int? width;

  const MovieImagesBackdropResponse({
    this.aspectRatio,
    this.filePath,
    this.height,
    this.iso6391,
    this.voteAverage,
    this.voteCount,
    this.width,
  });

  factory MovieImagesBackdropResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieImagesBackdropResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieImagesBackdropResponseToJson(this);
}

class MovieImagesPosterResponse {
  final double? aspectRatio;
  final String? filePath;
  final int? height;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  final int? voteAverage;
  final int? voteCount;
  final int? width;

  const MovieImagesPosterResponse({
    this.aspectRatio,
    this.filePath,
    this.height,
    this.iso6391,
    this.voteAverage,
    this.voteCount,
    this.width,
  });

  factory MovieImagesPosterResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieImagesPosterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieImagesPosterResponseToJson(this);
}
