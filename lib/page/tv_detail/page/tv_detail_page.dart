import 'package:flutter/material.dart';

class TvDetailPage extends StatefulWidget {
  const TvDetailPage({super.key});

  static const name = "/tv_detail";

  @override
  State<TvDetailPage> createState() => _TvDetailPageState();
}

class _TvDetailPageState extends State<TvDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tv detail"),
      ),
      body: const Center(child: Text("Tv")),
    );
  }
}
