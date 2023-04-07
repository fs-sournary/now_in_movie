import 'package:flutter/material.dart';

class PeopleSearchPage extends StatefulWidget {
  const PeopleSearchPage({super.key});

  static const name = "/people_search";

  @override
  State<PeopleSearchPage> createState() => _PeopleSearchPageState();
}

class _PeopleSearchPageState extends State<PeopleSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("People search")),
    );
  }
}
