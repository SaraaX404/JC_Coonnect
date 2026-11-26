import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jc_api/jc_api.dart' as api;
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/session/token_store.dart';
import 'package:jc_connect_app/src/features/auth/domain/login_result.dart';

/// Login against `/auth/login`, `/auth/login/verify` and
/// `/auth/login/resend` (backend ADR 0005, 0009, 0010). Throws
/// [ApiException].
class AuthRepository {
  const AuthRepository(this._api, this._tokens);
  final api.JcApi _api;
  final TokenStore _tokens;

  Future<LoginResult> login({
    required String email,
    required String password,
    String? schoolId,
  }) async {
    final result = (await apiCall(
      () => _api.auth.authLoginCreate(
        body: api.LoginRequest(
          email: email,
          password: password,
          schoolId: schoolId,
        ),
      ),
    )).data;
    if (result.schools case final schools?) return LoginPickSchool(schools);
    final mfa = result.mfa!;
    return LoginNeedsCode(
      challenge: mfa.challenge,
      method: mfa.method == api.MethodEnum.totp
          ? CodeMethod.totp
          : CodeMethod.email,
      email: email,
    );
  }

  /// Exactly one of [code] (authenticator or emailed) or [recoveryCode].
  Future<void> verify({
    required String challenge,
    String? code,
    String? recoveryCode,
  }) async {
    final tokens = (await apiCall(
      () => _api.auth.authLoginVerifyCreate(
        body: api.MfaVerifyRequest(
          challenge: challenge,
          code: code,
          recoveryCode: recoveryCode,
        ),
      ),
    )).data;
    await _tokens.save(access: tokens.access, refresh: tokens.refresh);
  }

  /// Emails a new code for an email challenge; the old code stops working.
  Future<void> resend(String challenge) => apiCall(
    () => _api.auth.authLoginResendCreate(
      body: api.ChallengeRequest(challenge: challenge),
    ),
  );
}

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) =>
      AuthRepository(ref.watch(jcApiProvider), ref.watch(tokenStoreProvider)),
);
