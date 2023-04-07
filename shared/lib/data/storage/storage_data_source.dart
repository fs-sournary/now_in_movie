import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageDataSource {
  const StorageDataSource({required this.storage});

  final FlutterSecureStorage storage;

  static const _accessToken = "user_token";

  Future<void> saveAccessToken(String token) async {
    await storage.write(key: _accessToken, value: token);
  }

  Future<String> getAccessToken() async {
    final token = await storage.read(key: _accessToken);
    return token ?? "";
  }
}


