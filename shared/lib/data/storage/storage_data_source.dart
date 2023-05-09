import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageDataSource {
  const StorageDataSource({required this.storage});

  final FlutterSecureStorage storage;

  static const _accessToken = "user_token";
  static const _themeMode = "theme_mode";

  Future<void> saveAccessToken(String token) async {
    await storage.write(key: _accessToken, value: token);
  }

  Future<String> getAccessToken() async {
    final token = await storage.read(key: _accessToken);
    return token ?? "";
  }

  Future<void> saveThemeMode(ThemeMode themeMode) async {
    await storage.write(key: _themeMode, value: themeMode.name);
  }

  Future<ThemeMode> getThemeMode() async {
    final themeName = await storage.read(key: _themeMode);
    return themeName == ThemeMode.dark.name ? ThemeMode.dark : ThemeMode.light;
  }
}
