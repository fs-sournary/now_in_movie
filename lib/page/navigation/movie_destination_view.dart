import 'package:flutter/material.dart';
import 'package:now_in_movie/page/movie/page/movie_page.dart';
import 'package:now_in_movie/page/movie_detail/page/movie_detail_page.dart';

class MovieDestinationView extends StatefulWidget {
  const MovieDestinationView({super.key, required this.navigationKey});

  final Key navigationKey;

  @override
  State<MovieDestinationView> createState() => _MovieDestinationViewState();
}

class _MovieDestinationViewState extends State<MovieDestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigationKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            switch (settings.name) {
              case "/":
                return const MoviePage();
              case MovieDetailPage.name:
                return const MovieDetailPage();
              default:
                return const SizedBox();
            }
          },
        );
      },
    );
  }
}
