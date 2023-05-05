import 'package:equatable/equatable.dart';
import 'package:shared/data/api/movie_images/movie_images_response.dart';

class MovieImages extends Equatable {
  const MovieImages({
    this.id = 0,
    this.backdrops = const [],
    this.posters = const [],
  });

  static const empty = MovieImages();

  final int id;
  final List<MovieImagesBackdrop> backdrops;
  final List<MovieImagesPoster> posters;

  factory MovieImages.fromResponse(MovieImagesResponse response) {
    return MovieImages(
      id: response.id ?? 0,
      backdrops: response.backdrops
              ?.map((e) => MovieImagesBackdrop.fromResponse(e))
              .toList() ??
          [],
      posters: response.posters
              ?.map((e) => MovieImagesPoster.fromResponse(e))
              .toList() ??
          [],
    );
  }

  @override
  List<Object?> get props => [id, backdrops, posters];
}

class MovieImagesBackdrop extends Equatable {
  const MovieImagesBackdrop({
    this.aspectRatio = 0.0,
    this.filePath = '',
    this.height = 0,
    this.iso6391 = '',
    this.voteAverage = 0,
    this.voteCount = 0,
    this.width = 0,
  });

  final double aspectRatio;
  final String filePath;
  final int height;
  final String iso6391;
  final int voteAverage;
  final int voteCount;
  final int width;

  factory MovieImagesBackdrop.fromResponse(
      MovieImagesBackdropResponse response) {
    return MovieImagesBackdrop(
      aspectRatio: response.aspectRatio ?? 0.0,
      filePath: response.filePath ?? '',
      height: response.height ?? 0,
      iso6391: response.iso6391 ?? '',
      voteAverage: response.voteAverage ?? 0,
      voteCount: response.voteCount ?? 0,
      width: response.width ?? 0,
    );
  }

  @override
  List<Object?> get props =>
      [aspectRatio, filePath, height, iso6391, voteAverage, voteCount, width];
}

class MovieImagesPoster extends Equatable {
  const MovieImagesPoster({
    this.aspectRatio = 0.0,
    this.filePath = '',
    this.height = 0,
    this.iso6391 = '',
    this.voteAverage = 0,
    this.voteCount = 0,
    this.width = 0,
  });

  final double aspectRatio;
  final String filePath;
  final int height;
  final String iso6391;
  final int voteAverage;
  final int voteCount;
  final int width;

  factory MovieImagesPoster.fromResponse(MovieImagesPosterResponse response) {
    return MovieImagesPoster(
      aspectRatio: response.aspectRatio ?? 0.0,
      filePath: response.filePath ?? '',
      height: response.height ?? 0,
      iso6391: response.iso6391 ?? '',
      voteAverage: response.voteAverage ?? 0,
      voteCount: response.voteCount ?? 0,
      width: response.width ?? 0,
    );
  }

  @override
  List<Object?> get props =>
      [aspectRatio, filePath, height, iso6391, voteAverage, voteCount, width];
}
