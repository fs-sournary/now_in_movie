import 'package:equatable/equatable.dart';
import 'package:shared/data/api/movie_detail/movie_detail_response.dart';

class MovieDetail extends Equatable {
  const MovieDetail({
    this.adult = false,
    this.backdropPath = '',
    this.budget = 0,
    this.genres = const [],
    this.homepage = '',
    this.id = 0,
    this.imdbId = '',
    this.originalLanguage = '',
    this.originalTitle = '',
    this.overview = '',
    this.popularity = 0.0,
    this.posterPath = '',
    this.productionCompanies = const [],
    this.productionCountries = const [],
    this.releaseDate = '',
    this.revenue = 0,
    this.runtime = 0,
    this.spokenLanguages = const [],
    this.status = '',
    this.tagline = '',
    this.title = '',
    this.video = false,
    this.voteAverage = 0.0,
    this.voteCount = 0,
  });

  static const empty = MovieDetail();

  final bool adult;
  final String backdropPath;
  final int budget;
  final List<MovieDetailGenre> genres;
  final String homepage;
  final int id;
  final String imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final List<MovieDetailProductionCompany> productionCompanies;
  final List<MovieDetailProductionCountry> productionCountries;
  final String releaseDate;
  final int revenue;
  final int runtime;
  final List<MovieDetailSpokenLanguage> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  factory MovieDetail.fromResponse(MovieDetailResponse response) {
    return MovieDetail(
      adult: response.adult ?? false,
      backdropPath: response.backdropPath ?? '',
      budget: response.budget ?? 0,
      genres: response.genres
              ?.map((e) => MovieDetailGenre.fromResponse(e))
              .toList() ??
          [],
      homepage: response.homepage ?? '',
      id: response.id ?? 0,
      imdbId: response.imdbId ?? '',
      originalLanguage: response.originalLanguage ?? '',
      originalTitle: response.originalTitle ?? '',
      overview: response.overview ?? '',
      popularity: response.popularity ?? 0.0,
      posterPath: response.posterPath ?? '',
      productionCompanies: response.productionCompanies
              ?.map((e) => MovieDetailProductionCompany.fromResponse(e))
              .toList() ??
          [],
      productionCountries: response.productionCountries
              ?.map((e) => MovieDetailProductionCountry.fromResponse(e))
              .toList() ??
          [],
      releaseDate: response.releaseDate ?? '',
      revenue: response.revenue ?? 0,
      runtime: response.runtime ?? 0,
      spokenLanguages: response.spokenLanguages
              ?.map((e) => MovieDetailSpokenLanguage.fromResponse(e))
              .toList() ??
          [],
      status: response.status ?? '',
      tagline: response.tagline ?? '',
      title: response.title ?? '',
      video: response.video ?? false,
      voteAverage: response.voteAverage ?? 0.0,
      voteCount: response.voteCount ?? 0,
    );
  }

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        budget,
        genres,
        homepage,
        id,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        productionCompanies,
        productionCountries,
        releaseDate,
        revenue,
        runtime,
        spokenLanguages,
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount
      ];
}

class MovieDetailGenre extends Equatable {
  const MovieDetailGenre({this.id = 0, this.name = ''});

  final int id;
  final String name;

  factory MovieDetailGenre.fromResponse(MovieDetailGenreResponse response) {
    return MovieDetailGenre(id: response.id ?? 0, name: response.name ?? '');
  }

  @override
  List<Object?> get props => [id, name];
}

class MovieDetailProductionCompany extends Equatable {
  const MovieDetailProductionCompany({
    this.id = 0,
    this.logoPath = '',
    this.name = '',
    this.originCountry = '',
  });

  final int id;
  final String logoPath;
  final String name;
  final String originCountry;

  factory MovieDetailProductionCompany.fromResponse(
    MovieDetailProductionCompanyResponse response,
  ) {
    return MovieDetailProductionCompany(
      id: response.id ?? 0,
      logoPath: response.logoPath ?? '',
      name: response.name ?? '',
      originCountry: response.originCountry ?? '',
    );
  }

  @override
  List<Object> get props => [id, logoPath, name, originCountry];
}

class MovieDetailProductionCountry extends Equatable {
  const MovieDetailProductionCountry({this.iso31661 = '', this.name = ''});

  final String iso31661;
  final String name;

  factory MovieDetailProductionCountry.fromResponse(
    MovieDetailProductionCountryResponse response,
  ) {
    return MovieDetailProductionCountry(
      iso31661: response.iso31661 ?? '',
      name: response.name ?? '',
    );
  }

  @override
  List<Object> get props => [iso31661, name];
}

class MovieDetailSpokenLanguage extends Equatable {
  const MovieDetailSpokenLanguage({this.ios6391 = '', this.name = ''});

  final String ios6391;
  final String name;

  factory MovieDetailSpokenLanguage.fromResponse(
    MovieDetailSpokenLanguageResponse response,
  ) {
    return MovieDetailSpokenLanguage(
      ios6391: response.ios6391 ?? '',
      name: response.ios6391 ?? '',
    );
  }

  @override
  List<Object> get props => [ios6391, name];
}
