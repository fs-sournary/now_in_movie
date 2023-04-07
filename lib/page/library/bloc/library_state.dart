part of 'library_bloc.dart';

abstract class LibraryState extends Equatable {
  const LibraryState();
  
  @override
  List<Object> get props => [];
}

class LibraryInitial extends LibraryState {}
