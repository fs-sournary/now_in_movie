import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'movie_search_event.dart';
part 'movie_search_state.dart';

class MovieSearchBloc extends Bloc<MovieSearchEvent, MovieSearchState> {
  MovieSearchBloc() : super(MovieSearchInitial()) {
    on<MovieSearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
