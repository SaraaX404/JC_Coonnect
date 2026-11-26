import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Tokens live only in secure storage. Never in prefs or logs.
class TokenStore {
  const TokenStore(this._storage);
  final FlutterSecureStorage _storage;

  static const _accessKey = 'access_token';
  static const _refreshKey = 'refresh_token';

  Future<void> save({required String access, required String refresh}) async {
    await _storage.write(key: _accessKey, value: access);
    await _storage.write(key: _refreshKey, value: refresh);
  }
}

final tokenStoreProvider = Provider<TokenStore>(
  (ref) => const TokenStore(FlutterSecureStorage()),
);
