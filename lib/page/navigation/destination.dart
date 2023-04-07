import 'package:flutter/material.dart';
import 'package:now_in_movie/generated/l10n.dart';

class Destination {
  const Destination({
    required this.index,
    required this.title,
    required this.icon,
  });

  final int index;
  final String title;
  final IconData icon;
}

final List<Destination> destinations = [
  Destination(
    index: 0,
    title: S.current.movie_navigation_bar_title,
    icon: Icons.movie,
  ),
  Destination(
    index: 1,
    title: S.current.tv_navigation_bar_title,
    icon: Icons.tv,
  ),
  Destination(
    index: 2,
    title: S.current.people_navigation_bar_title,
    icon: Icons.people,
  ),
  Destination(
    index: 3,
    title: S.current.library_navigation_bar_title,
    icon: Icons.library_add,
  ),
  Destination(
    index: 4,
    title: S.current.setting_navigation_bar_title,
    icon: Icons.settings,
  )
];
