import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared/model/movie_detail.dart';
import 'package:shared/usecase/movie/load_movie_detail_use_case.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  MovieDetailBloc({
    required this.loadMovieDetailUseCase,
  }) : super(const MovieDetailState()) {
    on<MovieDetailFetched>(_onMovieDetailFetched);
  }

  final LoadMovieDetailUseCase loadMovieDetailUseCase;

  void _onMovieDetailFetched(
    MovieDetailFetched event,
    Emitter<MovieDetailState> emit,
  ) async {
    try {
      emit(state.copyWith(movieDetailStatus: MovieDetailStatus.loading));
      final movieDetail = await loadMovieDetailUseCase.call(event.id);
      emit(state.copyWith(
        movieDetailStatus: MovieDetailStatus.success,
        movieDetail: movieDetail,
      ));
    } catch (e) {
      emit(state.copyWith(movieDetailStatus: MovieDetailStatus.error));
    }
  }
}
