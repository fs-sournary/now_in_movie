import 'package:equatable/equatable.dart';
import 'package:shared/data/api/category_movies/category_movies_response.dart';

class CategoryMovies extends Equatable {
  const CategoryMovies({
    this.page = 0,
    this.results = const [],
    this.totalPages = 0,
    this.totalResults = 0,
  });

  static const empty = CategoryMovies();

  final int page;
  final List<CategoryMovie> results;
  final int totalPages;
  final int totalResults;

  factory CategoryMovies.fromResponse(CategoryMoviesResponse response) {
    final results = response.results
        ?.map((e) => CategoryMovie.fromResponse(e))
        .toList();
    return CategoryMovies(
      page: response.page ?? 0,
      results: results ?? [],
      totalPages: response.totalPages ?? 0,
      totalResults: response.totalResults ?? 0,
    );
  }

  @override
  List<Object?> get props => [page, results, totalPages, totalResults];
}

class CategoryMovie extends Equatable {
  const CategoryMovie({
    this.adult = false,
    this.backdropPath = '',
    this.genreIds = const [],
    this.id = 0,
    this.originalLanguage = '',
    this.originalTitle = '',
    this.overview = '',
    this.popularity = 0.0,
    this.posterPath = '',
    this.releaseDate = '',
    this.title = '',
    this.video = false,
    this.voteAverage = 0,
    this.voteCount = 0,
  });

  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  factory CategoryMovie.fromResponse(CategoryMovieResponse response) {
    return CategoryMovie(
      adult: response.adult ?? false,
      backdropPath: response.backdropPath ?? '',
      genreIds: response.genreIds ?? [],
      id: response.id ?? 0,
      originalLanguage: response.originalLanguage ?? '',
      originalTitle: response.originalTitle ?? '',
      overview: response.overview ?? '',
      popularity: response.popularity ?? 0,
      posterPath: response.posterPath ?? '',
      releaseDate: response.releaseDate ?? '',
      title: response.title ?? '',
      video: response.video ?? false,
      voteAverage: response.voteAverage ?? 0,
      voteCount: response.voteCount ?? 0,
    );
  }

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        genreIds,
        id,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        title,
        video,
        voteAverage,
        voteCount,
      ];
}
