part of 'people_bloc.dart';

abstract class PeopleState extends Equatable {
  const PeopleState();
  
  @override
  List<Object> get props => [];
}

class PeopleInitial extends PeopleState {}
