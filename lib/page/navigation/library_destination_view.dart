import 'package:flutter/material.dart';
import 'package:now_in_movie/page/library/page/library_page.dart';

class LibraryDestinationView extends StatefulWidget {
  const LibraryDestinationView({super.key, required this.navigationKey});

  final Key navigationKey;

  @override
  State<LibraryDestinationView> createState() => _LibraryDestinationViewState();
}

class _LibraryDestinationViewState extends State<LibraryDestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigationKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            switch (settings.name) {
              case "/":
                return const LibraryPage();
              default:
                return const SizedBox();
            }
          },
        );
      },
    );
  }
}
