import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tv_detail_event.dart';
part 'tv_detail_state.dart';

class TvDetailBloc extends Bloc<TvDetailEvent, TvDetailState> {
  TvDetailBloc() : super(TvDetailInitial()) {
    on<TvDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
