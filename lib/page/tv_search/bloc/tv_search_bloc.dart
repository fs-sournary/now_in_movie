import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tv_search_event.dart';
part 'tv_search_state.dart';

class TvSearchBloc extends Bloc<TvSearchEvent, TvSearchState> {
  TvSearchBloc() : super(TvSearchInitial()) {
    on<TvSearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
