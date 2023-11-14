import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:now_in_movie/page/theme/theme_bloc.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final icon = isDark ? Icons.brightness_7 : Icons.brightness_2;
    return IconButton(
      icon: Icon(icon),
      onPressed: () {
        final themeMode = isDark ? ThemeMode.light : ThemeMode.dark;
        context.read<ThemeBloc>().add(ThemeModeSaved(themeMode));
      },
    );
  }
}
