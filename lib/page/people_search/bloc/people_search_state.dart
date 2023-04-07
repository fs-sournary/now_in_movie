part of 'people_search_bloc.dart';

abstract class PeopleSearchState extends Equatable {
  const PeopleSearchState();
  
  @override
  List<Object> get props => [];
}

class PeopleSearchInitial extends PeopleSearchState {}
