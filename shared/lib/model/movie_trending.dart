import 'package:equatable/equatable.dart';

class MovieTrending extends Equatable {
  const MovieTrending({
    this.adult = false,
    this.backdropPath = '',
    this.id = 0,
    this.title = '',
    this.originalLanguage = '',
    this.originalTitle = '',
    this.overview = '',
    this.posterPath = '',
    this.mediaType = '',
    this.genreIds = const [],
    this.popularity = 0.0,
    this.releaseDate = '',
    this.video = false,
    this.voteAverage = 0.0,
    this.voteCount = 0,
  });

  static const empty = MovieTrending();

  final bool adult;
  final String backdropPath;
  final int id;
  final String title;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String mediaType;
  final List<int> genreIds;
  final double popularity;
  final String releaseDate;
  final bool video;
  final double voteAverage;
  final int voteCount;

  @override
  List<Object> get props => [];
}
