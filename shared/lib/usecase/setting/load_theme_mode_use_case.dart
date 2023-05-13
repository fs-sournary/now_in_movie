import 'package:flutter/material.dart';
import 'package:shared/data/storage/storage_data_source.dart';
import 'package:shared/usecase/async_use_case.dart';

class LoadThemeModeUseCase extends AsyncUseCase<void, ThemeMode> {
  const LoadThemeModeUseCase(this.storageDataSource);

  final StorageDataSource storageDataSource;

  @override
  Future<ThemeMode> call(void params) async {
    return storageDataSource.getThemeMode();
  }
}
