import 'package:flutter_riverpod/misc.dart';
import 'package:jc_connect_app/src/features/auth/data/auth_repository.dart';
import 'package:jc_connect_app/src/features/auth/domain/login_result.dart';

/// A login that continues to an emailed code.
const emailCodeLogin = LoginNeedsCode(
  challenge: 'challenge-token',
  method: CodeMethod.email,
  email: 'm.sterling@jc.edu.jm',
);

/// Answers from [onLogin] / [onVerify] / [onResend] and records calls.
class FakeAuthRepository implements AuthRepository {
  FakeAuthRepository({
    this.onLogin = _emailCode,
    this.onVerify = _noop,
    this.onResend = _noResend,
  });

  Future<LoginResult> Function(String? schoolId) onLogin;
  Future<void> Function({String? code, String? recoveryCode}) onVerify;
  Future<void> Function() onResend;
  final logins = <({String email, String? schoolId})>[];

  static Future<LoginResult> _emailCode(String? _) async => emailCodeLogin;
  static Future<void> _noop({String? code, String? recoveryCode}) async {}
  static Future<void> _noResend() async {}

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

  @override
  Future<void> resend(String challenge) => onResend();
}
