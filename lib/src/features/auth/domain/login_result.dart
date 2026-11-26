import 'package:jc_api/jc_api.dart';

/// What `POST /auth/login` asks the app to do next. It never signs in
/// directly: every login has a code step (backend ADR 0010).
sealed class LoginResult {
  const LoginResult();
}

/// Verify a code against [challenge] at /auth/login/verify.
class LoginNeedsCode extends LoginResult {
  const LoginNeedsCode({
    required this.challenge,
    required this.method,
    required this.email,
  });
  final String challenge;
  final CodeMethod method;

  /// Where an [CodeMethod.email] code went (the address the user typed).
  final String email;
}

/// The account is in several schools: log in again with one of them.
class LoginPickSchool extends LoginResult {
  const LoginPickSchool(this.schools);
  final List<SchoolChoice> schools;
}

/// Where the login code comes from (`mfa.method`).
enum CodeMethod {
  /// The authenticator app, or a recovery code.
  totp,

  /// A code we emailed; it can be resent.
  email,
}
