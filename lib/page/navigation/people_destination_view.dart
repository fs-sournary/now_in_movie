import 'package:flutter/material.dart';
import 'package:now_in_movie/page/people/page/people_page.dart';
import 'package:now_in_movie/page/people_search/page/people_search_page.dart';

class PeopleDestinationView extends StatefulWidget {
  const PeopleDestinationView({super.key, required this.navigationKey});

  final Key navigationKey;

  @override
  State<PeopleDestinationView> createState() => _PeopleDestinationViewState();
}

class _PeopleDestinationViewState extends State<PeopleDestinationView> {
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
                return const PeoplePage();
              case PeopleSearchPage.name:
                return const PeopleSearchPage();
              default:
                return const SizedBox();
            }
          },
        );
      },
    );
  }
}
