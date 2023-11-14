import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: kToolbarHeight + 16,
          clipBehavior: Clip.none,
          scrolledUnderElevation: 0,
          floating: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: SearchAnchor.bar(
            viewBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
            barHintText: "Search movie",
            suggestionsBuilder: (context, controller) {
              return List<Widget>.generate(
                5,
                (index) {
                  return ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text("Initial item index: $index"),
                  );
                },
              );
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 100,
                    child: Card(
                      child: Center(child: Text('Card $index')),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 1000,
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ),
      ],
    );
  }
}
