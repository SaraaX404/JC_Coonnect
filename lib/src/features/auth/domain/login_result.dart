/// What `POST /auth/login` asks the app to do next.
sealed class LoginResult {
  const LoginResult();
}

/// Tokens saved; the user is in.
class LoginSignedIn extends LoginResult {
  const LoginSignedIn();
}

/// 2FA is on: verify a code against [challenge] at /auth/login/verify.
class LoginNeedsCode extends LoginResult {
  const LoginNeedsCode(this.challenge);
  final String challenge;
}

/// The account is in several schools: log in again with one of them.
class LoginPickSchool extends LoginResult {
  const LoginPickSchool(this.schools);
  final List<School> schools;
}

class School {
  const School({required this.id, required this.name});
  final String id;
  final String name;
}
