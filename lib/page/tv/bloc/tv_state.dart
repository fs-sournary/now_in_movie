part of 'tv_bloc.dart';

abstract class TvState extends Equatable {
  const TvState();
  
  @override
  List<Object> get props => [];
}

class TvInitial extends TvState {}
