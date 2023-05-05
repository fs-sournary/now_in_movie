import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TvPage extends StatefulWidget {
  const TvPage({super.key});

  @override
  State<TvPage> createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tv"),
      ),
    );
  }
}
