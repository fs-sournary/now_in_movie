import 'package:flutter/material.dart';
import 'package:now_in_movie/page/tv/page/tv_page.dart';
import 'package:now_in_movie/page/tv_detail/page/tv_detail_page.dart';
import 'package:now_in_movie/page/tv_search/page/tv_search_page.dart';

class TvDestinationView extends StatefulWidget {
  const TvDestinationView({super.key, required this.navigationKey});

  final Key navigationKey;

  @override
  State<TvDestinationView> createState() => _TvDestinationViewState();
}

class _TvDestinationViewState extends State<TvDestinationView> {
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
                return const TvPage();
              case TvDetailPage.name:
                return const TvDetailPage();
              case TvSearchPage.name:
                return const TvSearchPage();
              default:
                return const SizedBox();
            }
          },
        );
      },
    );
  }
}
