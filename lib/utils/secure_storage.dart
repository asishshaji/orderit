import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:orderit/constants.dart';

class SecureStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  const SecureStorage();

  Future<void> saveRefreshToken(String rToken) async {
    await _storage.write(key: REFRESH_TOKEN_KEY, value: rToken);
  }

  Future<void> saveAccessToken(String aToken) async {
    await _storage.write(key: ACCESS_TOKEN_KEY, value: aToken);
  }

  Future<String?> readRefreshToken() async {
    return await _storage.read(key: REFRESH_TOKEN_KEY);
  }

  Future<String?> readAccessToken() async {
    return await _storage.read(key: ACCESS_TOKEN_KEY);
  }

  Future<void> saveUID(String uid) async {
    await _storage.write(key: USER_ID_KEY, value: uid);
  }
}
