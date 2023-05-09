part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeModeLoaded extends ThemeEvent {
  const ThemeModeLoaded();

  @override
  List<Object> get props => [];
}

class ThemeModeSaved extends ThemeEvent {
  const ThemeModeSaved(this.themeMode);

  final ThemeMode themeMode;

  @override
  List<Object> get props => [themeMode];
}
