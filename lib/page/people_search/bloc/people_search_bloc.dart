import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'people_search_event.dart';
part 'people_search_state.dart';

class PeopleSearchBloc extends Bloc<PeopleSearchEvent, PeopleSearchState> {
  PeopleSearchBloc() : super(PeopleSearchInitial()) {
    on<PeopleSearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
