import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:now_in_movie/page/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:shared/di/get_it.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  static const name = "/movie_detail";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<MovieDetailBloc>()..add(const MovieDetailFetched(522016));
      },
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<MovieDetailBloc, MovieDetailState>(
            builder: (context, state) {
              return Text(state.movieDetail.title);
            },
          ),
        ),
      ),
    );
  }
}
