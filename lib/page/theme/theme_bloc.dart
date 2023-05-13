import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared/usecase/setting/load_theme_mode_use_case.dart';
import 'package:shared/usecase/setting/save_theme_mode_use_case.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc({
    required this.loadThemeModeUseCase,
    required this.saveThemeModeUseCase,
  }) : super(const ThemeState()) {
    on<ThemeModeLoaded>(_onThemeModeLoaded);
    on<ThemeModeSaved>(_onThemeModeSaved);
  }

  final LoadThemeModeUseCase loadThemeModeUseCase;
  final SaveThemeModeUseCase saveThemeModeUseCase;

  Future<void> _onThemeModeLoaded(
    ThemeModeLoaded event,
    Emitter<ThemeState> emit,
  ) async {
    final themeMode = await loadThemeModeUseCase.call(null);
    emit(state.copyWith(themeMode: themeMode));
  }

  Future<void> _onThemeModeSaved(
    ThemeModeSaved event,
    Emitter<ThemeState> emit,
  ) async {
    final themeMode = event.themeMode;
    await saveThemeModeUseCase.call(themeMode);
    emit(state.copyWith(themeMode: themeMode));
  }
}
