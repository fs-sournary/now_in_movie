part of 'movie_search_bloc.dart';

abstract class MovieSearchState extends Equatable {
  const MovieSearchState();
  
  @override
  List<Object> get props => [];
}

class MovieSearchInitial extends MovieSearchState {}
