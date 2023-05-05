part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();

  @override
  List<Object> get props => [];
}

class MovieDetailFetched extends MovieDetailEvent {
  const MovieDetailFetched(this.id);

  final int id;

  @override
  List<Object> get props => [id];
}
