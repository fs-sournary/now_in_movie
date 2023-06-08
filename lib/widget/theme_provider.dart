import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class ThemeProvider extends InheritedWidget {
  const ThemeProvider({
    super.key,
    required super.child,
    required this.setting,
    required this.lightDynamic,
    required this.darkDynamic,
  });

  final ThemeSetting setting;
  final ColorScheme? lightDynamic;
  final ColorScheme? darkDynamic;

  Color _blend(Color targetColor) {
    final blendColor =
        Blend.harmonize(targetColor.value, setting.sourceColor.value);
    return Color(blendColor);
  }

  Color _source(Color? targetColor) {
    Color source = setting.sourceColor;
    if (targetColor != null) {
      source = _blend(targetColor);
    }
    return source;
  }

  ColorScheme _colorScheme(Brightness brightness, Color? targetColor) {
    final dynamicPrimary = brightness == Brightness.light
        ? lightDynamic?.primary
        : darkDynamic?.primary;
    return ColorScheme.fromSeed(
      seedColor: dynamicPrimary ?? _source(targetColor),
      brightness: brightness,
    );
  }

  ShapeBorder get mediumShape {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));
  }

  AppBarTheme _appBarTheme(ColorScheme colorScheme) {
    return AppBarTheme(
      elevation: 0,
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
    );
  }

  CardTheme _cardTheme() {
    return CardTheme(
      elevation: 0,
      shape: mediumShape,
      clipBehavior: Clip.antiAlias,
    );
  }

  NavigationRailThemeData _navigationRailThemeData() {
    return const NavigationRailThemeData();
  }

  NavigationBarThemeData _navigationBarTheme(ColorScheme colorScheme) {
    return NavigationBarThemeData(
      elevation: 2,
      backgroundColor: colorScheme.background,
    );
  }

  BottomAppBarTheme _bottomAppBarTheme(ColorScheme colorScheme) {
    return BottomAppBarTheme(color: colorScheme.surface, elevation: 0);
  }

  SearchBarThemeData _searchBarThemeData(ColorScheme colorScheme) {
    return SearchBarThemeData(
      // surfaceTintColor: MaterialStatePropertyAll(
      //   colorScheme.surfaceVariant,
      // ),
      // shape: MaterialStatePropertyAll(
      //   RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      // ),
      backgroundColor: MaterialStatePropertyAll(
        colorScheme.onInverseSurface,
      ),
      // overlayColor: MaterialStateColor.resolveWith(
      //   (states) => colorScheme.background,
      // ),
      elevation: const MaterialStatePropertyAll(0),
    );
  }

  ThemeData light([Color? targetColor]) {
    final colorScheme = _colorScheme(Brightness.light, targetColor);
    return ThemeData.light().copyWith(
      colorScheme: colorScheme,
      appBarTheme: _appBarTheme(colorScheme),
      navigationRailTheme: _navigationRailThemeData(),
      navigationBarTheme: _navigationBarTheme(colorScheme),
      bottomAppBarTheme: _bottomAppBarTheme(colorScheme),
      cardTheme: _cardTheme(),
      searchBarTheme: _searchBarThemeData(colorScheme),
      scaffoldBackgroundColor: colorScheme.surface,
      useMaterial3: true,
    );
  }

  ThemeData dark([Color? targetColor]) {
    final colorScheme = _colorScheme(Brightness.dark, targetColor);
    return ThemeData.dark().copyWith(
      colorScheme: colorScheme,
      appBarTheme: _appBarTheme(colorScheme),
      navigationRailTheme: _navigationRailThemeData(),
      navigationBarTheme: _navigationBarTheme(colorScheme),
      bottomAppBarTheme: _bottomAppBarTheme(colorScheme),
      cardTheme: _cardTheme(),
      searchBarTheme: _searchBarThemeData(colorScheme),
      scaffoldBackgroundColor: colorScheme.surface,
      useMaterial3: true,
    );
  }

  @override
  bool updateShouldNotify(covariant ThemeProvider oldWidget) {
    return oldWidget.setting != setting;
  }

  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;
  }
}

class ThemeSetting {
  const ThemeSetting({required this.sourceColor, required this.themeMode});

  final Color sourceColor;
  final ThemeMode themeMode;
}
