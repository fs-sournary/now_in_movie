import 'package:equatable/equatable.dart';

class Review extends Equatable {
  const Review({
    this.name = '',
    this.username = '',
    this.avatarPath = '',
    this.rating = 0,
  });

  static const empty = Review();

  final String name;
  final String username;
  final String avatarPath;
  final int rating;

  @override
  List<Object> get props => [];
}
