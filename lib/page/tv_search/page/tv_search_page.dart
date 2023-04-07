import 'package:flutter/material.dart';

class TvSearchPage extends StatefulWidget {
  const TvSearchPage({super.key});

  static const name = "/tv_search";

  @override
  State<TvSearchPage> createState() => _TvSearchPageState();
}

class _TvSearchPageState extends State<TvSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tv Search")),
    );
  }
}
