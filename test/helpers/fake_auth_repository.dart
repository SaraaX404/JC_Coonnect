import 'package:flutter_riverpod/misc.dart';
import 'package:jc_connect_app/src/features/auth/data/auth_repository.dart';
import 'package:jc_connect_app/src/features/auth/domain/login_result.dart';

/// Answers login and verify from [onLogin] / [onVerify] and records calls.
class FakeAuthRepository implements AuthRepository {
  FakeAuthRepository({
    this.onLogin = _signedIn,
    this.onVerify = _noop,
  });

  Future<LoginResult> Function(String? schoolId) onLogin;
  Future<void> Function({String? code, String? recoveryCode}) onVerify;
  final logins = <({String email, String? schoolId})>[];

  static Future<LoginResult> _signedIn(String? _) async =>
      const LoginSignedIn();
  static Future<void> _noop({String? code, String? recoveryCode}) async {}

  Override get asOverride => authRepositoryProvider.overrideWithValue(this);

  @override
  Future<LoginResult> login({
    required String email,
    required String password,
    String? schoolId,
  }) {
    logins.add((email: email, schoolId: schoolId));
    return onLogin(schoolId);
  }

  @override
  Future<void> verify({
    required String challenge,
    String? code,
    String? recoveryCode,
  }) => onVerify(code: code, recoveryCode: recoveryCode);
}
