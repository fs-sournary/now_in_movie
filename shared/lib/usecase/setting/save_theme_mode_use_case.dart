import 'package:flutter/material.dart';
import 'package:shared/data/storage/storage_data_source.dart';
import 'package:shared/usecase/async_use_case.dart';

class SaveThemeModeUseCase extends AsyncUseCase<ThemeMode, void> {
  const SaveThemeModeUseCase(this.storageDataSource);

  final StorageDataSource storageDataSource;

  @override
  Future<void> call(ThemeMode params) async {
    await storageDataSource.saveThemeMode(params);
  }
}
