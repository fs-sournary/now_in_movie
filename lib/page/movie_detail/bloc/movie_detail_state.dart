part of 'movie_detail_bloc.dart';

class MovieDetailState extends Equatable {
  const MovieDetailState({
    this.movieDetailStatus = MovieDetailStatus.initial,
    this.movieDetail = MovieDetail.empty,
  });

  final MovieDetailStatus movieDetailStatus;
  final MovieDetail movieDetail;

  MovieDetailState copyWith({
    MovieDetailStatus? movieDetailStatus,
    MovieDetail? movieDetail,
  }) {
    return MovieDetailState(
      movieDetailStatus: movieDetailStatus ?? this.movieDetailStatus,
      movieDetail: movieDetail ?? this.movieDetail,
    );
  }

  @override
  List<Object> get props => [movieDetailStatus, movieDetail];
}

enum MovieDetailStatus { initial, loading, success, error }
