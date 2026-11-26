import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/session/token_store.dart';
import 'package:jc_connect_app/src/features/auth/domain/login_result.dart';

/// Login against `/auth/login` and `/auth/login/verify` (backend ADR 0005,
/// 0009). Throws [ApiException].
class AuthRepository {
  const AuthRepository(this._dio, this._tokens);
  final Dio _dio;
  final TokenStore _tokens;

  Future<LoginResult> login({
    required String email,
    required String password,
    String? schoolId,
  }) async {
    final data = await apiPost(_dio, '/auth/login', {
      'email': email,
      'password': password,
      'school_id': ?schoolId,
    });
    if (data['mfa'] case {'challenge': final String challenge}) {
      return LoginNeedsCode(challenge);
    }
    if (data['schools'] case final List<Object?> schools) {
      return LoginPickSchool([
        for (final school in schools)
          if (school case {'id': final String id, 'name': final String name})
            School(id: id, name: name),
      ]);
    }
    await _save(data['tokens']! as Map<String, Object?>);
    return const LoginSignedIn();
  }

  /// Exactly one of [code] (authenticator) or [recoveryCode].
  Future<void> verify({
    required String challenge,
    String? code,
    String? recoveryCode,
  }) async {
    final tokens = await apiPost(_dio, '/auth/login/verify', {
      'challenge': challenge,
      'code': ?code,
      'recovery_code': ?recoveryCode,
    });
    await _save(tokens);
  }

  Future<void> _save(Map<String, Object?> tokens) => _tokens.save(
    access: tokens['access']! as String,
    refresh: tokens['refresh']! as String,
  );
}

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) =>
      AuthRepository(ref.watch(dioProvider), ref.watch(tokenStoreProvider)),
);
